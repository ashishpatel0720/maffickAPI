<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin: Maffick API</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.5.3/css/bulma.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

</head>
<div id="app">
    <hero></hero>

    {{--id will be used for using navigation--}}
    <view-contacts id="view-contacts"></view-contacts>

    <event-add-form id="add-event" :editform="false" title="Add Event"></event-add-form>

    <event-edit-form id="edit-event" :editform="true" title="Edit Event"></event-edit-form>

    <modal></modal>

</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.4.4/vue.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.16.2/axios.min.js"></script>
{{--<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>--}}
{{--<script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.4.4/vue.min.js"></script>--}}
<script src="/admin.js"></script>
</body>
</html>