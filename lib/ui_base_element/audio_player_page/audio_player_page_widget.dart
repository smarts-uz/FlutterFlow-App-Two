import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'audio_player_page_model.dart';
export 'audio_player_page_model.dart';

class AudioPlayerPageWidget extends StatefulWidget {
  const AudioPlayerPageWidget({Key? key}) : super(key: key);

  @override
  _AudioPlayerPageWidgetState createState() => _AudioPlayerPageWidgetState();
}

class _AudioPlayerPageWidgetState extends State<AudioPlayerPageWidget> {
  late AudioPlayerPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AudioPlayerPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            FFLocalizations.of(context).getText(
              '5oh3lyqo' /* AudioPlayer */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              FlutterFlowAudioPlayer(
                audio: Audio.network(
                  'https://www.youtube.com/watch?v=EMDhqk8VHlE&ab_channel=Uzbekistan%27sclub',
                  metas: Metas(
                    id: 'watch?v=EMDhqk8VHlE&ab_channel=Uzbekistan%27sclub-1fd487ff',
                    title: 'KONSTA O‘zbekistonlik ',
                  ),
                ),
                titleTextStyle: FlutterFlowTheme.of(context).titleLarge,
                playbackDurationTextStyle:
                    FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).primary,
                        ),
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                playbackButtonColor: FlutterFlowTheme.of(context).primary,
                activeTrackColor: FlutterFlowTheme.of(context).alternate,
                elevation: 2.0,
                playInBackground: PlayInBackground.disabledRestoreOnForeground,
              ),
              FlutterFlowAudioPlayer(
                audio: Audio.network(
                  'https://filesamples.com/samples/audio/mp3/sample3.mp3',
                  metas: Metas(
                    id: 'sample3.mp3-74ddcbe0',
                    title: 'Test',
                  ),
                ),
                titleTextStyle: FlutterFlowTheme.of(context).titleLarge,
                playbackDurationTextStyle:
                    FlutterFlowTheme.of(context).labelMedium,
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                playbackButtonColor: FlutterFlowTheme.of(context).primary,
                activeTrackColor: FlutterFlowTheme.of(context).alternate,
                elevation: 4.0,
                playInBackground: PlayInBackground.disabledRestoreOnForeground,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
