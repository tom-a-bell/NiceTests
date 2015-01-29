$(document).ready(function() {
    ko.bindingHandlers.chosen = {
        init: function (element, valueAccessor, allBindings) {
            var properties = { placeholder: 'Select one...', disable_search_threshold: 11 };
            $.extend(properties, allBindings().chosen);

            ko.bindingHandlers.options.init(element);

            $(element).attr('data-placeholder', properties.placeholder);
            $(element).chosen(properties);
        },
        update: function (element, valueAccessor, allBindings) {
            var options = valueAccessor().options;
            ko.bindingHandlers.options.update(element, options, allBindings);
            $(element).trigger('chosen:updated');
        }
    };
});
