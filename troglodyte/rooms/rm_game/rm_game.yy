{
  "$GMRoom":"v1",
  "%Name":"rm_game",
  "creationCodeFile":"",
  "inheritCode":false,
  "inheritCreationOrder":false,
  "inheritLayers":false,
  "instanceCreationOrder":[
    {"name":"inst_76F4391D","path":"rooms/rm_game/rm_game.yy",},
    {"name":"inst_5D7A6A23","path":"rooms/rm_game/rm_game.yy",},
    {"name":"inst_2ADEF463","path":"rooms/rm_game/rm_game.yy",},
    {"name":"inst_25B1774E","path":"rooms/rm_game/rm_game.yy",},
  ],
  "isDnd":false,
  "layers":[
    {"$GMRInstanceLayer":"","%Name":"Control","depth":-400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Control","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"Player","depth":-300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"$GMRInstance":"v1","%Name":"inst_76F4391D","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_76F4391D","objectId":{"name":"obj_player","path":"objects/obj_player/obj_player.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":48.0,"y":210.0,},
        {"$GMRInstance":"v1","%Name":"inst_5D7A6A23","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_5D7A6A23","objectId":{"name":"obj_bg_parallax","path":"objects/obj_bg_parallax/obj_bg_parallax.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":0.0,"y":-32.0,},
        {"$GMRInstance":"v1","%Name":"inst_2ADEF463","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_2ADEF463","objectId":{"name":"obj_healthbar","path":"objects/obj_healthbar/obj_healthbar.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":0.0,"y":-64.0,},
      ],"layers":[],"name":"Player","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"Mobs","depth":-200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"$GMRInstance":"v1","%Name":"inst_25B1774E","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_25B1774E","objectId":{"name":"o_frog","path":"objects/o_frog/o_frog.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":242.0,"y":282.0,},
      ],"layers":[],"name":"Mobs","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"Dust","depth":-100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Dust","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRTileLayer":"","%Name":"Collisions","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Collisions","properties":[],"resourceType":"GMRTileLayer","resourceVersion":"2.0","tiles":{"SerialiseHeight":12,"SerialiseWidth":45,"TileCompressedData":[
          -186,-2147483648,1,0,-6,-2147483648,1,0,-37,-2147483648,1,0,-6,-2147483648,1,0,-37,-2147483648,1,0,-6,
          -2147483648,1,0,-37,-2147483648,1,0,-6,-2147483648,1,0,-37,-2147483648,6,0,-2147483648,0,0,-2147483648,
          -2147483648,-5,1,-2,-2147483648,-2,1,-24,-2147483648,-135,1,
        ],"TileDataFormat":1,},"tilesetId":{"name":"t_collisions","path":"tilesets/t_collisions/t_collisions.yy",},"userdefinedDepth":false,"visible":false,"x":0,"y":0,},
    {"$GMRTileLayer":"","%Name":"Tile_mid","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Tile_mid","properties":[],"resourceType":"GMRTileLayer","resourceVersion":"2.0","tiles":{"SerialiseHeight":23,"SerialiseWidth":90,"TileCompressedData":[
          -1530,-2147483648,540,1,2,3,4,5,6,1,2,3,4,5,6,1,2,3,4,5,6,1,2,3,4,5,6,1,2,3,4,5,6,1,2,3,4,5,6,1,2,3,
          4,5,6,1,2,3,4,5,6,1,2,3,4,5,6,1,2,3,4,5,6,1,2,3,4,5,6,1,2,3,4,5,6,1,2,3,4,5,6,1,2,3,4,5,6,1,2,3,4,5,
          6,8,9,10,11,12,13,8,9,10,11,12,13,8,9,10,11,12,13,8,9,10,11,12,13,8,9,10,11,12,13,8,9,10,11,12,13,8,
          9,10,11,12,13,8,9,10,11,12,13,8,9,10,11,12,13,8,9,10,11,12,13,8,9,10,11,12,13,8,9,10,11,12,13,8,9,10,
          11,12,13,8,9,10,11,12,13,8,9,10,11,12,13,15,16,17,18,19,20,15,16,17,18,19,20,15,16,17,18,19,20,15,16,
          17,18,19,20,15,16,17,18,19,20,15,16,17,18,19,20,15,16,17,18,19,20,15,16,17,18,19,20,15,16,17,18,19,20,
          15,16,17,18,19,20,15,16,17,18,19,20,15,16,17,18,19,20,15,16,17,18,19,20,15,16,17,18,19,20,15,16,17,18,
          19,20,22,23,24,25,26,27,22,23,24,25,26,27,22,23,24,25,26,27,22,23,24,25,26,27,22,23,24,25,26,27,22,23,
          24,25,26,27,22,23,24,25,26,27,22,23,24,25,26,27,22,23,24,25,26,27,22,23,24,25,26,27,22,23,24,25,26,27,
          22,23,24,25,26,27,22,23,24,25,26,27,22,23,24,25,26,27,22,23,24,25,26,27,29,30,31,32,33,34,29,30,31,32,
          33,34,29,30,31,32,33,34,29,30,31,32,33,34,29,30,31,32,33,34,29,30,31,32,33,34,29,30,31,32,33,34,29,30,
          31,32,33,34,29,30,31,32,33,34,29,30,31,32,33,34,29,30,31,32,33,34,29,30,31,32,33,34,29,30,31,32,33,34,
          29,30,31,32,33,34,29,30,31,32,33,34,15,16,17,18,19,20,15,16,17,18,19,20,15,16,17,18,19,20,15,16,17,18,
          19,20,15,16,17,18,19,20,15,16,17,18,19,20,15,16,17,18,19,20,15,16,17,18,19,20,15,16,17,18,19,20,15,16,
          17,18,19,20,15,16,17,18,19,20,15,16,17,18,19,20,15,16,17,18,19,20,15,16,17,18,19,20,15,16,17,18,19,20,
        ],"TileDataFormat":1,},"tilesetId":{"name":"ts_jungle","path":"tilesets/ts_jungle/ts_jungle.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"$GMRTileLayer":"","%Name":"Tile_back","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Tile_back","properties":[],"resourceType":"GMRTileLayer","resourceVersion":"2.0","tiles":{"SerialiseHeight":23,"SerialiseWidth":90,"TileCompressedData":[
          -1370,-2147483648,-4,0,10,1,2,3,4,5,6,1,2,3,4,-4,-2147483648,4,1,2,3,4,-68,-2147483648,-4,0,10,8,9,10,
          11,12,13,8,9,10,11,-4,-2147483648,4,8,9,10,11,-68,-2147483648,-4,0,10,15,16,17,18,19,20,15,16,17,18,
          -4,-2147483648,4,15,16,17,18,-68,-2147483648,-6,0,-424,-2147483648,
        ],"TileDataFormat":1,},"tilesetId":{"name":"ts_jungle","path":"tilesets/ts_jungle/ts_jungle.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"$GMRBackgroundLayer":"","%Name":"bg_parallax_trees_distant_1","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"bg_parallax_trees_distant_1","properties":[],"resourceType":"GMRBackgroundLayer","resourceVersion":"2.0","spriteId":{"name":"spr_trees_distant_1","path":"sprites/spr_trees_distant_1/spr_trees_distant_1.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":120,},
    {"$GMRBackgroundLayer":"","%Name":"bg_parallax_trees_distant_2","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"bg_parallax_trees_distant_2","properties":[],"resourceType":"GMRBackgroundLayer","resourceVersion":"2.0","spriteId":{"name":"spr_tree_distant_2","path":"sprites/spr_tree_distant_2/spr_tree_distant_2.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":100,},
    {"$GMRBackgroundLayer":"","%Name":"bg_parallax_trees_distant_3","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"bg_parallax_trees_distant_3","properties":[],"resourceType":"GMRBackgroundLayer","resourceVersion":"2.0","spriteId":{"name":"spr_trees_distant_3","path":"sprites/spr_trees_distant_3/spr_trees_distant_3.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":100,},
    {"$GMRBackgroundLayer":"","%Name":"bg_parallax_mountain","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":600,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"bg_parallax_mountain","properties":[],"resourceType":"GMRBackgroundLayer","resourceVersion":"2.0","spriteId":{"name":"spr_mountain","path":"sprites/spr_mountain/spr_mountain.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":true,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":36,},
    {"$GMRBackgroundLayer":"","%Name":"bg_parallax_skies","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":700,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"bg_parallax_skies","properties":[],"resourceType":"GMRBackgroundLayer","resourceVersion":"2.0","spriteId":{"name":"spr_skies","path":"sprites/spr_skies/spr_skies.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":true,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
    {"$GMRBackgroundLayer":"","%Name":"Background","animationFPS":15.0,"animationSpeedType":0,"colour":4278190080,"depth":800,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Background","properties":[],"resourceType":"GMRBackgroundLayer","resourceVersion":"2.0","spriteId":null,"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "name":"rm_game",
  "parent":{
    "name":"Rooms",
    "path":"folders/Rooms.yy",
  },
  "parentRoom":null,
  "physicsSettings":{
    "inheritPhysicsSettings":false,
    "PhysicsWorld":false,
    "PhysicsWorldGravityX":0.0,
    "PhysicsWorldGravityY":10.0,
    "PhysicsWorldPixToMetres":0.1,
  },
  "resourceType":"GMRoom",
  "resourceVersion":"2.0",
  "roomSettings":{
    "Height":360,
    "inheritRoomSettings":false,
    "persistent":false,
    "Width":1440,
  },
  "sequenceId":null,
  "views":[
    {"hborder":32,"hport":768,"hspeed":-1,"hview":360,"inherit":false,"objectId":null,"vborder":32,"visible":true,"vspeed":-1,"wport":1366,"wview":640,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings":{
    "clearDisplayBuffer":true,
    "clearViewBackground":true,
    "enableViews":true,
    "inheritViewSettings":false,
  },
  "volume":1.0,
}