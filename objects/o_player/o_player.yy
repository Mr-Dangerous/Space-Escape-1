{
    "id": "01c64d94-cd03-4bdc-92fe-aa81775799d3",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "o_player",
    "eventList": [
        {
            "id": "5ac138e0-b84d-484b-bfd5-619547e29139",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "01c64d94-cd03-4bdc-92fe-aa81775799d3"
        },
        {
            "id": "6af2038c-29b8-42c8-a345-d26515788aa0",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "01c64d94-cd03-4bdc-92fe-aa81775799d3"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": null,
    "parentObjectId": "00000000-0000-0000-0000-000000000000",
    "persistent": false,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": null,
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "5ee78527-d822-41c9-a8d8-b29436185074",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "2",
            "varName": "max_x_speed",
            "varType": 0
        },
        {
            "id": "f5dbe0ea-012d-44e2-91f7-10db143f5202",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "5",
            "varName": "health",
            "varType": 1
        },
        {
            "id": "d309c19a-5c5d-4438-a477-e5c2c5b58067",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "-5",
            "varName": "jump_height",
            "varType": 0
        },
        {
            "id": "d3fef4ed-e254-4105-8b3e-76066884c019",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "yspeed",
            "varType": 0
        },
        {
            "id": "be7dcc70-dbc6-446e-bd92-7a066efb3352",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "xspeed",
            "varType": 0
        },
        {
            "id": "9687b5fd-8283-443b-93d9-27b6f9e87bb9",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": ".3",
            "varName": "acceleration",
            "varType": 0
        },
        {
            "id": "07a438c2-97e1-433d-a6f4-3b2ac2b1b60c",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "1",
            "varName": "max_y_speed",
            "varType": 0
        },
        {
            "id": "a6e6b143-8959-462f-a0c8-9247ba7fbe15",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "4",
            "varName": "max_sprint_x_speed",
            "varType": 0
        },
        {
            "id": "9b03cd47-a6f2-4cc3-9d95-e4b419b30182",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "2",
            "varName": "max_sprint_y_speed",
            "varType": 0
        },
        {
            "id": "03936af0-5655-430d-9364-7ac8126278d0",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "10",
            "varName": "attack_duration",
            "varType": 1
        },
        {
            "id": "c59550c3-1ba1-46ac-a020-ca426f868f27",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "attack_count",
            "varType": 1
        }
    ],
    "solid": false,
    "spriteId": "fafe986e-7da6-4b9f-8a36-92ad97e53d5f",
    "visible": true
}