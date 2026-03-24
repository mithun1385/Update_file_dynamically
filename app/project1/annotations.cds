using CinemaService as service from '../../srv/cat-service';
annotate service.Movies with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'title',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'genre',
                Value : genre,
            },
            {
                $Type : 'UI.DataField',
                Label : 'durationMinutes',
                Value : durationMinutes,
            },
            {
                $Type : 'UI.DataField',
                Label : 'releaseDate',
                Value : releaseDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'director',
                Value : director,
            },
            {
                $Type : 'UI.DataField',
                Label : 'language',
                Value : language,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ticketPrice',
                Value : ticketPrice,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'title',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : 'genre',
            Value : genre,
        },
        {
            $Type : 'UI.DataField',
            Label : 'durationMinutes',
            Value : durationMinutes,
        },
        {
            $Type : 'UI.DataField',
            Label : 'releaseDate',
            Value : releaseDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'director',
            Value : director,
        },
    ],
    Common.SideEffects #PriceChange:{
        $Type:'Common.SideEffectsType',
        SourceProperties:[durationMinutes],
        TargetProperties:['director']
    }
);

