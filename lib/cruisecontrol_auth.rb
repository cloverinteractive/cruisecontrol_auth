module CruisecontrolAuth
  class Engine < Rails::Engine
    $LIB_PATH = File.dirname __FILE__
    $APP_PATH = File.join( $LIB_PATH, 'cruisecontrol_auth', 'app' )

    paths.app.controllers << File.join( $APP_PATH, 'controllers' )
    paths.app.models      << File.join( $APP_PATH, 'models' )
    paths.app.views       << File.join( $APP_PATH, 'views' )
    paths.config.routes   << File.join( $LIB_PATH, 'cruise_control_auth', 'config' )
  end
end
