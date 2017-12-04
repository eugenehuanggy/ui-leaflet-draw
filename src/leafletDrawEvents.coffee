angular.module('ui-leaflet')
.factory 'leafletDrawEvents', (leafletEventsHelpersFactory) ->

  class DrawEvents extends leafletEventsHelpersFactory
    constructor: () ->
      super('leafletDirectiveDraw', 'draw')

    getAvailableEvents: () ->
      return [
        'created'
        'edited'
        'deleted'
        'drawstart'
        'drawstop'
        'drawvertex'
        'editstart',
        'editmove',
        'editresize',
        'editvertex',
        'editstop'
        'deletestart'
        'deletestop'].map (n) ->
          return 'draw:' + n

  new DrawEvents()
