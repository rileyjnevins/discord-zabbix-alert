// Resolved message.
        if (params.event_value == 0 && params.event_update_status == 0) {
            body.embeds[0].title = stringTruncate('OK ✅: ' + params.event_name, 256);
            fields.push(
            {
                name: 'Recovery time',
                value: params.event_recovery_time + ' ' + params.event_recovery_date,
                inline: 'True'
            });
        }

        // Problem message.
        else if (params.event_value == 1 && params.event_update_status == 0) {
            body.embeds[0].title = stringTruncate('PROBLEM ⛔: ' + params.event_name, 256);
            fields.push(
            {
                name: 'Event time',
                value: params.event_time + ' ' + params.event_date,
                inline: 'True'
            });
        }

        // Update message.
        else if (params.event_update_status == 1) {
            body.embeds[0].title = stringTruncate('UPDATE ☑️: ' + params.event_name, 256);
            body.embeds[0].description = params.event_update_user + ' ' + params.event_update_action + '.';

            if (params.event_update_message) {
                body.embeds[0].description += ' Comment:\n>>> ' + params.event_update_message;
            }

            body.embeds[0].description = stringTruncate(body.embeds[0].description, 2048);

            fields.push(
            {
                name: 'Event update time',
                value: params.event_update_time + ' ' + params.event_update_date,
                inline: 'True'
            });
        }

        fields.push(
        {
            name: 'Severity',
            value: params.event_severity,
            inline: 'True'
        });

        if (params.event_opdata) {
            fields.push(
            {
                name: 'Operational data',
                value: stringTruncate(params.event_opdata, 1024),
                inline: 'True'
            });
        }

        if (params.event_value == 1 && params.event_update_status == 0 && params.trigger_description) {
            fields.push(
            {
                name: 'Trigger description',
                value: stringTruncate(params.trigger_description, 1024)
            });
        }

        if (params.trigger_id) {
            body.embeds[0].footer = {
                text: 'Event ID: ' + params.trigger_id,
                text: ' ',
                text: 'YOUR COMPANY | https://yourwebsite.tld/'
            }
            body.embeds[0].footer.text = stringTruncate(body.embeds[0].footer.text, 2048);
        }

        if (params.event_tags) {
            body.embeds[0].footer.text += '\nEvent tags: ' + params.event_tags;
        }
    }
