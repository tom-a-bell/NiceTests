$(document).ready(function() {
    ko.bindingHandlers.chosen = {
        init: function (element, valueAccessor, allBindingsAccessor) {
            var allBindings = allBindingsAccessor();

            var options = { default: 'Select one...' };
            $.extend(options, allBindings.chosen)

            $(element).attr('data-placeholder', options.default);
        },
        update: function (element) {
            $(element).chosen();
        }
    };
});
