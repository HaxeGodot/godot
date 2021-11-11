// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
`godot.AnimatedTexture` is a resource format for frame-based animations, where multiple textures can be chained automatically with a predefined delay for each frame. Unlike `godot.AnimationPlayer` or `godot.AnimatedSprite`, it isn't a `godot.Node`, but has the advantage of being usable anywhere a `godot.Texture` resource can be used, e.g. in a `godot.TileSet`.

The playback of the animation is controlled by the `godot.AnimatedTexture.fps` property as well as each frame's optional delay (see `godot.AnimatedTexture.setFrameDelay`). The animation loops, i.e. it will restart at frame 0 automatically after playing the last frame.

`godot.AnimatedTexture` currently requires all frame textures to have the same size, otherwise the bigger ones will be cropped to match the smallest one.

Note: AnimatedTexture doesn't support using `godot.AtlasTexture`s. Each frame needs to be a separate `godot.Texture`.
**/
@:libType
@:csNative
@:native("Godot.AnimatedTexture")
@:autoBuild(godot.Godot.buildUserClass())
extern class AnimatedTexture extends godot.Texture {
	@:native("Frame255__delaySec")
	public var frame255__delaySec:Single;

	@:native("Frame255__texture")
	public var frame255__texture:godot.Texture;

	@:native("Frame254__delaySec")
	public var frame254__delaySec:Single;

	@:native("Frame254__texture")
	public var frame254__texture:godot.Texture;

	@:native("Frame253__delaySec")
	public var frame253__delaySec:Single;

	@:native("Frame253__texture")
	public var frame253__texture:godot.Texture;

	@:native("Frame252__delaySec")
	public var frame252__delaySec:Single;

	@:native("Frame252__texture")
	public var frame252__texture:godot.Texture;

	@:native("Frame251__delaySec")
	public var frame251__delaySec:Single;

	@:native("Frame251__texture")
	public var frame251__texture:godot.Texture;

	@:native("Frame250__delaySec")
	public var frame250__delaySec:Single;

	@:native("Frame250__texture")
	public var frame250__texture:godot.Texture;

	@:native("Frame249__delaySec")
	public var frame249__delaySec:Single;

	@:native("Frame249__texture")
	public var frame249__texture:godot.Texture;

	@:native("Frame248__delaySec")
	public var frame248__delaySec:Single;

	@:native("Frame248__texture")
	public var frame248__texture:godot.Texture;

	@:native("Frame247__delaySec")
	public var frame247__delaySec:Single;

	@:native("Frame247__texture")
	public var frame247__texture:godot.Texture;

	@:native("Frame246__delaySec")
	public var frame246__delaySec:Single;

	@:native("Frame246__texture")
	public var frame246__texture:godot.Texture;

	@:native("Frame245__delaySec")
	public var frame245__delaySec:Single;

	@:native("Frame245__texture")
	public var frame245__texture:godot.Texture;

	@:native("Frame244__delaySec")
	public var frame244__delaySec:Single;

	@:native("Frame244__texture")
	public var frame244__texture:godot.Texture;

	@:native("Frame243__delaySec")
	public var frame243__delaySec:Single;

	@:native("Frame243__texture")
	public var frame243__texture:godot.Texture;

	@:native("Frame242__delaySec")
	public var frame242__delaySec:Single;

	@:native("Frame242__texture")
	public var frame242__texture:godot.Texture;

	@:native("Frame241__delaySec")
	public var frame241__delaySec:Single;

	@:native("Frame241__texture")
	public var frame241__texture:godot.Texture;

	@:native("Frame240__delaySec")
	public var frame240__delaySec:Single;

	@:native("Frame240__texture")
	public var frame240__texture:godot.Texture;

	@:native("Frame239__delaySec")
	public var frame239__delaySec:Single;

	@:native("Frame239__texture")
	public var frame239__texture:godot.Texture;

	@:native("Frame238__delaySec")
	public var frame238__delaySec:Single;

	@:native("Frame238__texture")
	public var frame238__texture:godot.Texture;

	@:native("Frame237__delaySec")
	public var frame237__delaySec:Single;

	@:native("Frame237__texture")
	public var frame237__texture:godot.Texture;

	@:native("Frame236__delaySec")
	public var frame236__delaySec:Single;

	@:native("Frame236__texture")
	public var frame236__texture:godot.Texture;

	@:native("Frame235__delaySec")
	public var frame235__delaySec:Single;

	@:native("Frame235__texture")
	public var frame235__texture:godot.Texture;

	@:native("Frame234__delaySec")
	public var frame234__delaySec:Single;

	@:native("Frame234__texture")
	public var frame234__texture:godot.Texture;

	@:native("Frame233__delaySec")
	public var frame233__delaySec:Single;

	@:native("Frame233__texture")
	public var frame233__texture:godot.Texture;

	@:native("Frame232__delaySec")
	public var frame232__delaySec:Single;

	@:native("Frame232__texture")
	public var frame232__texture:godot.Texture;

	@:native("Frame231__delaySec")
	public var frame231__delaySec:Single;

	@:native("Frame231__texture")
	public var frame231__texture:godot.Texture;

	@:native("Frame230__delaySec")
	public var frame230__delaySec:Single;

	@:native("Frame230__texture")
	public var frame230__texture:godot.Texture;

	@:native("Frame229__delaySec")
	public var frame229__delaySec:Single;

	@:native("Frame229__texture")
	public var frame229__texture:godot.Texture;

	@:native("Frame228__delaySec")
	public var frame228__delaySec:Single;

	@:native("Frame228__texture")
	public var frame228__texture:godot.Texture;

	@:native("Frame227__delaySec")
	public var frame227__delaySec:Single;

	@:native("Frame227__texture")
	public var frame227__texture:godot.Texture;

	@:native("Frame226__delaySec")
	public var frame226__delaySec:Single;

	@:native("Frame226__texture")
	public var frame226__texture:godot.Texture;

	@:native("Frame225__delaySec")
	public var frame225__delaySec:Single;

	@:native("Frame225__texture")
	public var frame225__texture:godot.Texture;

	@:native("Frame224__delaySec")
	public var frame224__delaySec:Single;

	@:native("Frame224__texture")
	public var frame224__texture:godot.Texture;

	@:native("Frame223__delaySec")
	public var frame223__delaySec:Single;

	@:native("Frame223__texture")
	public var frame223__texture:godot.Texture;

	@:native("Frame222__delaySec")
	public var frame222__delaySec:Single;

	@:native("Frame222__texture")
	public var frame222__texture:godot.Texture;

	@:native("Frame221__delaySec")
	public var frame221__delaySec:Single;

	@:native("Frame221__texture")
	public var frame221__texture:godot.Texture;

	@:native("Frame220__delaySec")
	public var frame220__delaySec:Single;

	@:native("Frame220__texture")
	public var frame220__texture:godot.Texture;

	@:native("Frame219__delaySec")
	public var frame219__delaySec:Single;

	@:native("Frame219__texture")
	public var frame219__texture:godot.Texture;

	@:native("Frame218__delaySec")
	public var frame218__delaySec:Single;

	@:native("Frame218__texture")
	public var frame218__texture:godot.Texture;

	@:native("Frame217__delaySec")
	public var frame217__delaySec:Single;

	@:native("Frame217__texture")
	public var frame217__texture:godot.Texture;

	@:native("Frame216__delaySec")
	public var frame216__delaySec:Single;

	@:native("Frame216__texture")
	public var frame216__texture:godot.Texture;

	@:native("Frame215__delaySec")
	public var frame215__delaySec:Single;

	@:native("Frame215__texture")
	public var frame215__texture:godot.Texture;

	@:native("Frame214__delaySec")
	public var frame214__delaySec:Single;

	@:native("Frame214__texture")
	public var frame214__texture:godot.Texture;

	@:native("Frame213__delaySec")
	public var frame213__delaySec:Single;

	@:native("Frame213__texture")
	public var frame213__texture:godot.Texture;

	@:native("Frame212__delaySec")
	public var frame212__delaySec:Single;

	@:native("Frame212__texture")
	public var frame212__texture:godot.Texture;

	@:native("Frame211__delaySec")
	public var frame211__delaySec:Single;

	@:native("Frame211__texture")
	public var frame211__texture:godot.Texture;

	@:native("Frame210__delaySec")
	public var frame210__delaySec:Single;

	@:native("Frame210__texture")
	public var frame210__texture:godot.Texture;

	@:native("Frame209__delaySec")
	public var frame209__delaySec:Single;

	@:native("Frame209__texture")
	public var frame209__texture:godot.Texture;

	@:native("Frame208__delaySec")
	public var frame208__delaySec:Single;

	@:native("Frame208__texture")
	public var frame208__texture:godot.Texture;

	@:native("Frame207__delaySec")
	public var frame207__delaySec:Single;

	@:native("Frame207__texture")
	public var frame207__texture:godot.Texture;

	@:native("Frame206__delaySec")
	public var frame206__delaySec:Single;

	@:native("Frame206__texture")
	public var frame206__texture:godot.Texture;

	@:native("Frame205__delaySec")
	public var frame205__delaySec:Single;

	@:native("Frame205__texture")
	public var frame205__texture:godot.Texture;

	@:native("Frame204__delaySec")
	public var frame204__delaySec:Single;

	@:native("Frame204__texture")
	public var frame204__texture:godot.Texture;

	@:native("Frame203__delaySec")
	public var frame203__delaySec:Single;

	@:native("Frame203__texture")
	public var frame203__texture:godot.Texture;

	@:native("Frame202__delaySec")
	public var frame202__delaySec:Single;

	@:native("Frame202__texture")
	public var frame202__texture:godot.Texture;

	@:native("Frame201__delaySec")
	public var frame201__delaySec:Single;

	@:native("Frame201__texture")
	public var frame201__texture:godot.Texture;

	@:native("Frame200__delaySec")
	public var frame200__delaySec:Single;

	@:native("Frame200__texture")
	public var frame200__texture:godot.Texture;

	@:native("Frame199__delaySec")
	public var frame199__delaySec:Single;

	@:native("Frame199__texture")
	public var frame199__texture:godot.Texture;

	@:native("Frame198__delaySec")
	public var frame198__delaySec:Single;

	@:native("Frame198__texture")
	public var frame198__texture:godot.Texture;

	@:native("Frame197__delaySec")
	public var frame197__delaySec:Single;

	@:native("Frame197__texture")
	public var frame197__texture:godot.Texture;

	@:native("Frame196__delaySec")
	public var frame196__delaySec:Single;

	@:native("Frame196__texture")
	public var frame196__texture:godot.Texture;

	@:native("Frame195__delaySec")
	public var frame195__delaySec:Single;

	@:native("Frame195__texture")
	public var frame195__texture:godot.Texture;

	@:native("Frame194__delaySec")
	public var frame194__delaySec:Single;

	@:native("Frame194__texture")
	public var frame194__texture:godot.Texture;

	@:native("Frame193__delaySec")
	public var frame193__delaySec:Single;

	@:native("Frame193__texture")
	public var frame193__texture:godot.Texture;

	@:native("Frame192__delaySec")
	public var frame192__delaySec:Single;

	@:native("Frame192__texture")
	public var frame192__texture:godot.Texture;

	@:native("Frame191__delaySec")
	public var frame191__delaySec:Single;

	@:native("Frame191__texture")
	public var frame191__texture:godot.Texture;

	@:native("Frame190__delaySec")
	public var frame190__delaySec:Single;

	@:native("Frame190__texture")
	public var frame190__texture:godot.Texture;

	@:native("Frame189__delaySec")
	public var frame189__delaySec:Single;

	@:native("Frame189__texture")
	public var frame189__texture:godot.Texture;

	@:native("Frame188__delaySec")
	public var frame188__delaySec:Single;

	@:native("Frame188__texture")
	public var frame188__texture:godot.Texture;

	@:native("Frame187__delaySec")
	public var frame187__delaySec:Single;

	@:native("Frame187__texture")
	public var frame187__texture:godot.Texture;

	@:native("Frame186__delaySec")
	public var frame186__delaySec:Single;

	@:native("Frame186__texture")
	public var frame186__texture:godot.Texture;

	@:native("Frame185__delaySec")
	public var frame185__delaySec:Single;

	@:native("Frame185__texture")
	public var frame185__texture:godot.Texture;

	@:native("Frame184__delaySec")
	public var frame184__delaySec:Single;

	@:native("Frame184__texture")
	public var frame184__texture:godot.Texture;

	@:native("Frame183__delaySec")
	public var frame183__delaySec:Single;

	@:native("Frame183__texture")
	public var frame183__texture:godot.Texture;

	@:native("Frame182__delaySec")
	public var frame182__delaySec:Single;

	@:native("Frame182__texture")
	public var frame182__texture:godot.Texture;

	@:native("Frame181__delaySec")
	public var frame181__delaySec:Single;

	@:native("Frame181__texture")
	public var frame181__texture:godot.Texture;

	@:native("Frame180__delaySec")
	public var frame180__delaySec:Single;

	@:native("Frame180__texture")
	public var frame180__texture:godot.Texture;

	@:native("Frame179__delaySec")
	public var frame179__delaySec:Single;

	@:native("Frame179__texture")
	public var frame179__texture:godot.Texture;

	@:native("Frame178__delaySec")
	public var frame178__delaySec:Single;

	@:native("Frame178__texture")
	public var frame178__texture:godot.Texture;

	@:native("Frame177__delaySec")
	public var frame177__delaySec:Single;

	@:native("Frame177__texture")
	public var frame177__texture:godot.Texture;

	@:native("Frame176__delaySec")
	public var frame176__delaySec:Single;

	@:native("Frame176__texture")
	public var frame176__texture:godot.Texture;

	@:native("Frame175__delaySec")
	public var frame175__delaySec:Single;

	@:native("Frame175__texture")
	public var frame175__texture:godot.Texture;

	@:native("Frame174__delaySec")
	public var frame174__delaySec:Single;

	@:native("Frame174__texture")
	public var frame174__texture:godot.Texture;

	@:native("Frame173__delaySec")
	public var frame173__delaySec:Single;

	@:native("Frame173__texture")
	public var frame173__texture:godot.Texture;

	@:native("Frame172__delaySec")
	public var frame172__delaySec:Single;

	@:native("Frame172__texture")
	public var frame172__texture:godot.Texture;

	@:native("Frame171__delaySec")
	public var frame171__delaySec:Single;

	@:native("Frame171__texture")
	public var frame171__texture:godot.Texture;

	@:native("Frame170__delaySec")
	public var frame170__delaySec:Single;

	@:native("Frame170__texture")
	public var frame170__texture:godot.Texture;

	@:native("Frame169__delaySec")
	public var frame169__delaySec:Single;

	@:native("Frame169__texture")
	public var frame169__texture:godot.Texture;

	@:native("Frame168__delaySec")
	public var frame168__delaySec:Single;

	@:native("Frame168__texture")
	public var frame168__texture:godot.Texture;

	@:native("Frame167__delaySec")
	public var frame167__delaySec:Single;

	@:native("Frame167__texture")
	public var frame167__texture:godot.Texture;

	@:native("Frame166__delaySec")
	public var frame166__delaySec:Single;

	@:native("Frame166__texture")
	public var frame166__texture:godot.Texture;

	@:native("Frame165__delaySec")
	public var frame165__delaySec:Single;

	@:native("Frame165__texture")
	public var frame165__texture:godot.Texture;

	@:native("Frame164__delaySec")
	public var frame164__delaySec:Single;

	@:native("Frame164__texture")
	public var frame164__texture:godot.Texture;

	@:native("Frame163__delaySec")
	public var frame163__delaySec:Single;

	@:native("Frame163__texture")
	public var frame163__texture:godot.Texture;

	@:native("Frame162__delaySec")
	public var frame162__delaySec:Single;

	@:native("Frame162__texture")
	public var frame162__texture:godot.Texture;

	@:native("Frame161__delaySec")
	public var frame161__delaySec:Single;

	@:native("Frame161__texture")
	public var frame161__texture:godot.Texture;

	@:native("Frame160__delaySec")
	public var frame160__delaySec:Single;

	@:native("Frame160__texture")
	public var frame160__texture:godot.Texture;

	@:native("Frame159__delaySec")
	public var frame159__delaySec:Single;

	@:native("Frame159__texture")
	public var frame159__texture:godot.Texture;

	@:native("Frame158__delaySec")
	public var frame158__delaySec:Single;

	@:native("Frame158__texture")
	public var frame158__texture:godot.Texture;

	@:native("Frame157__delaySec")
	public var frame157__delaySec:Single;

	@:native("Frame157__texture")
	public var frame157__texture:godot.Texture;

	@:native("Frame156__delaySec")
	public var frame156__delaySec:Single;

	@:native("Frame156__texture")
	public var frame156__texture:godot.Texture;

	@:native("Frame155__delaySec")
	public var frame155__delaySec:Single;

	@:native("Frame155__texture")
	public var frame155__texture:godot.Texture;

	@:native("Frame154__delaySec")
	public var frame154__delaySec:Single;

	@:native("Frame154__texture")
	public var frame154__texture:godot.Texture;

	@:native("Frame153__delaySec")
	public var frame153__delaySec:Single;

	@:native("Frame153__texture")
	public var frame153__texture:godot.Texture;

	@:native("Frame152__delaySec")
	public var frame152__delaySec:Single;

	@:native("Frame152__texture")
	public var frame152__texture:godot.Texture;

	@:native("Frame151__delaySec")
	public var frame151__delaySec:Single;

	@:native("Frame151__texture")
	public var frame151__texture:godot.Texture;

	@:native("Frame150__delaySec")
	public var frame150__delaySec:Single;

	@:native("Frame150__texture")
	public var frame150__texture:godot.Texture;

	@:native("Frame149__delaySec")
	public var frame149__delaySec:Single;

	@:native("Frame149__texture")
	public var frame149__texture:godot.Texture;

	@:native("Frame148__delaySec")
	public var frame148__delaySec:Single;

	@:native("Frame148__texture")
	public var frame148__texture:godot.Texture;

	@:native("Frame147__delaySec")
	public var frame147__delaySec:Single;

	@:native("Frame147__texture")
	public var frame147__texture:godot.Texture;

	@:native("Frame146__delaySec")
	public var frame146__delaySec:Single;

	@:native("Frame146__texture")
	public var frame146__texture:godot.Texture;

	@:native("Frame145__delaySec")
	public var frame145__delaySec:Single;

	@:native("Frame145__texture")
	public var frame145__texture:godot.Texture;

	@:native("Frame144__delaySec")
	public var frame144__delaySec:Single;

	@:native("Frame144__texture")
	public var frame144__texture:godot.Texture;

	@:native("Frame143__delaySec")
	public var frame143__delaySec:Single;

	@:native("Frame143__texture")
	public var frame143__texture:godot.Texture;

	@:native("Frame142__delaySec")
	public var frame142__delaySec:Single;

	@:native("Frame142__texture")
	public var frame142__texture:godot.Texture;

	@:native("Frame141__delaySec")
	public var frame141__delaySec:Single;

	@:native("Frame141__texture")
	public var frame141__texture:godot.Texture;

	@:native("Frame140__delaySec")
	public var frame140__delaySec:Single;

	@:native("Frame140__texture")
	public var frame140__texture:godot.Texture;

	@:native("Frame139__delaySec")
	public var frame139__delaySec:Single;

	@:native("Frame139__texture")
	public var frame139__texture:godot.Texture;

	@:native("Frame138__delaySec")
	public var frame138__delaySec:Single;

	@:native("Frame138__texture")
	public var frame138__texture:godot.Texture;

	@:native("Frame137__delaySec")
	public var frame137__delaySec:Single;

	@:native("Frame137__texture")
	public var frame137__texture:godot.Texture;

	@:native("Frame136__delaySec")
	public var frame136__delaySec:Single;

	@:native("Frame136__texture")
	public var frame136__texture:godot.Texture;

	@:native("Frame135__delaySec")
	public var frame135__delaySec:Single;

	@:native("Frame135__texture")
	public var frame135__texture:godot.Texture;

	@:native("Frame134__delaySec")
	public var frame134__delaySec:Single;

	@:native("Frame134__texture")
	public var frame134__texture:godot.Texture;

	@:native("Frame133__delaySec")
	public var frame133__delaySec:Single;

	@:native("Frame133__texture")
	public var frame133__texture:godot.Texture;

	@:native("Frame132__delaySec")
	public var frame132__delaySec:Single;

	@:native("Frame132__texture")
	public var frame132__texture:godot.Texture;

	@:native("Frame131__delaySec")
	public var frame131__delaySec:Single;

	@:native("Frame131__texture")
	public var frame131__texture:godot.Texture;

	@:native("Frame130__delaySec")
	public var frame130__delaySec:Single;

	@:native("Frame130__texture")
	public var frame130__texture:godot.Texture;

	@:native("Frame129__delaySec")
	public var frame129__delaySec:Single;

	@:native("Frame129__texture")
	public var frame129__texture:godot.Texture;

	@:native("Frame128__delaySec")
	public var frame128__delaySec:Single;

	@:native("Frame128__texture")
	public var frame128__texture:godot.Texture;

	@:native("Frame127__delaySec")
	public var frame127__delaySec:Single;

	@:native("Frame127__texture")
	public var frame127__texture:godot.Texture;

	@:native("Frame126__delaySec")
	public var frame126__delaySec:Single;

	@:native("Frame126__texture")
	public var frame126__texture:godot.Texture;

	@:native("Frame125__delaySec")
	public var frame125__delaySec:Single;

	@:native("Frame125__texture")
	public var frame125__texture:godot.Texture;

	@:native("Frame124__delaySec")
	public var frame124__delaySec:Single;

	@:native("Frame124__texture")
	public var frame124__texture:godot.Texture;

	@:native("Frame123__delaySec")
	public var frame123__delaySec:Single;

	@:native("Frame123__texture")
	public var frame123__texture:godot.Texture;

	@:native("Frame122__delaySec")
	public var frame122__delaySec:Single;

	@:native("Frame122__texture")
	public var frame122__texture:godot.Texture;

	@:native("Frame121__delaySec")
	public var frame121__delaySec:Single;

	@:native("Frame121__texture")
	public var frame121__texture:godot.Texture;

	@:native("Frame120__delaySec")
	public var frame120__delaySec:Single;

	@:native("Frame120__texture")
	public var frame120__texture:godot.Texture;

	@:native("Frame119__delaySec")
	public var frame119__delaySec:Single;

	@:native("Frame119__texture")
	public var frame119__texture:godot.Texture;

	@:native("Frame118__delaySec")
	public var frame118__delaySec:Single;

	@:native("Frame118__texture")
	public var frame118__texture:godot.Texture;

	@:native("Frame117__delaySec")
	public var frame117__delaySec:Single;

	@:native("Frame117__texture")
	public var frame117__texture:godot.Texture;

	@:native("Frame116__delaySec")
	public var frame116__delaySec:Single;

	@:native("Frame116__texture")
	public var frame116__texture:godot.Texture;

	@:native("Frame115__delaySec")
	public var frame115__delaySec:Single;

	@:native("Frame115__texture")
	public var frame115__texture:godot.Texture;

	@:native("Frame114__delaySec")
	public var frame114__delaySec:Single;

	@:native("Frame114__texture")
	public var frame114__texture:godot.Texture;

	@:native("Frame113__delaySec")
	public var frame113__delaySec:Single;

	@:native("Frame113__texture")
	public var frame113__texture:godot.Texture;

	@:native("Frame112__delaySec")
	public var frame112__delaySec:Single;

	@:native("Frame112__texture")
	public var frame112__texture:godot.Texture;

	@:native("Frame111__delaySec")
	public var frame111__delaySec:Single;

	@:native("Frame111__texture")
	public var frame111__texture:godot.Texture;

	@:native("Frame110__delaySec")
	public var frame110__delaySec:Single;

	@:native("Frame110__texture")
	public var frame110__texture:godot.Texture;

	@:native("Frame109__delaySec")
	public var frame109__delaySec:Single;

	@:native("Frame109__texture")
	public var frame109__texture:godot.Texture;

	@:native("Frame108__delaySec")
	public var frame108__delaySec:Single;

	@:native("Frame108__texture")
	public var frame108__texture:godot.Texture;

	@:native("Frame107__delaySec")
	public var frame107__delaySec:Single;

	@:native("Frame107__texture")
	public var frame107__texture:godot.Texture;

	@:native("Frame106__delaySec")
	public var frame106__delaySec:Single;

	@:native("Frame106__texture")
	public var frame106__texture:godot.Texture;

	@:native("Frame105__delaySec")
	public var frame105__delaySec:Single;

	@:native("Frame105__texture")
	public var frame105__texture:godot.Texture;

	@:native("Frame104__delaySec")
	public var frame104__delaySec:Single;

	@:native("Frame104__texture")
	public var frame104__texture:godot.Texture;

	@:native("Frame103__delaySec")
	public var frame103__delaySec:Single;

	@:native("Frame103__texture")
	public var frame103__texture:godot.Texture;

	@:native("Frame102__delaySec")
	public var frame102__delaySec:Single;

	@:native("Frame102__texture")
	public var frame102__texture:godot.Texture;

	@:native("Frame101__delaySec")
	public var frame101__delaySec:Single;

	@:native("Frame101__texture")
	public var frame101__texture:godot.Texture;

	@:native("Frame100__delaySec")
	public var frame100__delaySec:Single;

	@:native("Frame100__texture")
	public var frame100__texture:godot.Texture;

	@:native("Frame99__delaySec")
	public var frame99__delaySec:Single;

	@:native("Frame99__texture")
	public var frame99__texture:godot.Texture;

	@:native("Frame98__delaySec")
	public var frame98__delaySec:Single;

	@:native("Frame98__texture")
	public var frame98__texture:godot.Texture;

	@:native("Frame97__delaySec")
	public var frame97__delaySec:Single;

	@:native("Frame97__texture")
	public var frame97__texture:godot.Texture;

	@:native("Frame96__delaySec")
	public var frame96__delaySec:Single;

	@:native("Frame96__texture")
	public var frame96__texture:godot.Texture;

	@:native("Frame95__delaySec")
	public var frame95__delaySec:Single;

	@:native("Frame95__texture")
	public var frame95__texture:godot.Texture;

	@:native("Frame94__delaySec")
	public var frame94__delaySec:Single;

	@:native("Frame94__texture")
	public var frame94__texture:godot.Texture;

	@:native("Frame93__delaySec")
	public var frame93__delaySec:Single;

	@:native("Frame93__texture")
	public var frame93__texture:godot.Texture;

	@:native("Frame92__delaySec")
	public var frame92__delaySec:Single;

	@:native("Frame92__texture")
	public var frame92__texture:godot.Texture;

	@:native("Frame91__delaySec")
	public var frame91__delaySec:Single;

	@:native("Frame91__texture")
	public var frame91__texture:godot.Texture;

	@:native("Frame90__delaySec")
	public var frame90__delaySec:Single;

	@:native("Frame90__texture")
	public var frame90__texture:godot.Texture;

	@:native("Frame89__delaySec")
	public var frame89__delaySec:Single;

	@:native("Frame89__texture")
	public var frame89__texture:godot.Texture;

	@:native("Frame88__delaySec")
	public var frame88__delaySec:Single;

	@:native("Frame88__texture")
	public var frame88__texture:godot.Texture;

	@:native("Frame87__delaySec")
	public var frame87__delaySec:Single;

	@:native("Frame87__texture")
	public var frame87__texture:godot.Texture;

	@:native("Frame86__delaySec")
	public var frame86__delaySec:Single;

	@:native("Frame86__texture")
	public var frame86__texture:godot.Texture;

	@:native("Frame85__delaySec")
	public var frame85__delaySec:Single;

	@:native("Frame85__texture")
	public var frame85__texture:godot.Texture;

	@:native("Frame84__delaySec")
	public var frame84__delaySec:Single;

	@:native("Frame84__texture")
	public var frame84__texture:godot.Texture;

	@:native("Frame83__delaySec")
	public var frame83__delaySec:Single;

	@:native("Frame83__texture")
	public var frame83__texture:godot.Texture;

	@:native("Frame82__delaySec")
	public var frame82__delaySec:Single;

	@:native("Frame82__texture")
	public var frame82__texture:godot.Texture;

	@:native("Frame81__delaySec")
	public var frame81__delaySec:Single;

	@:native("Frame81__texture")
	public var frame81__texture:godot.Texture;

	@:native("Frame80__delaySec")
	public var frame80__delaySec:Single;

	@:native("Frame80__texture")
	public var frame80__texture:godot.Texture;

	@:native("Frame79__delaySec")
	public var frame79__delaySec:Single;

	@:native("Frame79__texture")
	public var frame79__texture:godot.Texture;

	@:native("Frame78__delaySec")
	public var frame78__delaySec:Single;

	@:native("Frame78__texture")
	public var frame78__texture:godot.Texture;

	@:native("Frame77__delaySec")
	public var frame77__delaySec:Single;

	@:native("Frame77__texture")
	public var frame77__texture:godot.Texture;

	@:native("Frame76__delaySec")
	public var frame76__delaySec:Single;

	@:native("Frame76__texture")
	public var frame76__texture:godot.Texture;

	@:native("Frame75__delaySec")
	public var frame75__delaySec:Single;

	@:native("Frame75__texture")
	public var frame75__texture:godot.Texture;

	@:native("Frame74__delaySec")
	public var frame74__delaySec:Single;

	@:native("Frame74__texture")
	public var frame74__texture:godot.Texture;

	@:native("Frame73__delaySec")
	public var frame73__delaySec:Single;

	@:native("Frame73__texture")
	public var frame73__texture:godot.Texture;

	@:native("Frame72__delaySec")
	public var frame72__delaySec:Single;

	@:native("Frame72__texture")
	public var frame72__texture:godot.Texture;

	@:native("Frame71__delaySec")
	public var frame71__delaySec:Single;

	@:native("Frame71__texture")
	public var frame71__texture:godot.Texture;

	@:native("Frame70__delaySec")
	public var frame70__delaySec:Single;

	@:native("Frame70__texture")
	public var frame70__texture:godot.Texture;

	@:native("Frame69__delaySec")
	public var frame69__delaySec:Single;

	@:native("Frame69__texture")
	public var frame69__texture:godot.Texture;

	@:native("Frame68__delaySec")
	public var frame68__delaySec:Single;

	@:native("Frame68__texture")
	public var frame68__texture:godot.Texture;

	@:native("Frame67__delaySec")
	public var frame67__delaySec:Single;

	@:native("Frame67__texture")
	public var frame67__texture:godot.Texture;

	@:native("Frame66__delaySec")
	public var frame66__delaySec:Single;

	@:native("Frame66__texture")
	public var frame66__texture:godot.Texture;

	@:native("Frame65__delaySec")
	public var frame65__delaySec:Single;

	@:native("Frame65__texture")
	public var frame65__texture:godot.Texture;

	@:native("Frame64__delaySec")
	public var frame64__delaySec:Single;

	@:native("Frame64__texture")
	public var frame64__texture:godot.Texture;

	@:native("Frame63__delaySec")
	public var frame63__delaySec:Single;

	@:native("Frame63__texture")
	public var frame63__texture:godot.Texture;

	@:native("Frame62__delaySec")
	public var frame62__delaySec:Single;

	@:native("Frame62__texture")
	public var frame62__texture:godot.Texture;

	@:native("Frame61__delaySec")
	public var frame61__delaySec:Single;

	@:native("Frame61__texture")
	public var frame61__texture:godot.Texture;

	@:native("Frame60__delaySec")
	public var frame60__delaySec:Single;

	@:native("Frame60__texture")
	public var frame60__texture:godot.Texture;

	@:native("Frame59__delaySec")
	public var frame59__delaySec:Single;

	@:native("Frame59__texture")
	public var frame59__texture:godot.Texture;

	@:native("Frame58__delaySec")
	public var frame58__delaySec:Single;

	@:native("Frame58__texture")
	public var frame58__texture:godot.Texture;

	@:native("Frame57__delaySec")
	public var frame57__delaySec:Single;

	@:native("Frame57__texture")
	public var frame57__texture:godot.Texture;

	@:native("Frame56__delaySec")
	public var frame56__delaySec:Single;

	@:native("Frame56__texture")
	public var frame56__texture:godot.Texture;

	@:native("Frame55__delaySec")
	public var frame55__delaySec:Single;

	@:native("Frame55__texture")
	public var frame55__texture:godot.Texture;

	@:native("Frame54__delaySec")
	public var frame54__delaySec:Single;

	@:native("Frame54__texture")
	public var frame54__texture:godot.Texture;

	@:native("Frame53__delaySec")
	public var frame53__delaySec:Single;

	@:native("Frame53__texture")
	public var frame53__texture:godot.Texture;

	@:native("Frame52__delaySec")
	public var frame52__delaySec:Single;

	@:native("Frame52__texture")
	public var frame52__texture:godot.Texture;

	@:native("Frame51__delaySec")
	public var frame51__delaySec:Single;

	@:native("Frame51__texture")
	public var frame51__texture:godot.Texture;

	@:native("Frame50__delaySec")
	public var frame50__delaySec:Single;

	@:native("Frame50__texture")
	public var frame50__texture:godot.Texture;

	@:native("Frame49__delaySec")
	public var frame49__delaySec:Single;

	@:native("Frame49__texture")
	public var frame49__texture:godot.Texture;

	@:native("Frame48__delaySec")
	public var frame48__delaySec:Single;

	@:native("Frame48__texture")
	public var frame48__texture:godot.Texture;

	@:native("Frame47__delaySec")
	public var frame47__delaySec:Single;

	@:native("Frame47__texture")
	public var frame47__texture:godot.Texture;

	@:native("Frame46__delaySec")
	public var frame46__delaySec:Single;

	@:native("Frame46__texture")
	public var frame46__texture:godot.Texture;

	@:native("Frame45__delaySec")
	public var frame45__delaySec:Single;

	@:native("Frame45__texture")
	public var frame45__texture:godot.Texture;

	@:native("Frame44__delaySec")
	public var frame44__delaySec:Single;

	@:native("Frame44__texture")
	public var frame44__texture:godot.Texture;

	@:native("Frame43__delaySec")
	public var frame43__delaySec:Single;

	@:native("Frame43__texture")
	public var frame43__texture:godot.Texture;

	@:native("Frame42__delaySec")
	public var frame42__delaySec:Single;

	@:native("Frame42__texture")
	public var frame42__texture:godot.Texture;

	@:native("Frame41__delaySec")
	public var frame41__delaySec:Single;

	@:native("Frame41__texture")
	public var frame41__texture:godot.Texture;

	@:native("Frame40__delaySec")
	public var frame40__delaySec:Single;

	@:native("Frame40__texture")
	public var frame40__texture:godot.Texture;

	@:native("Frame39__delaySec")
	public var frame39__delaySec:Single;

	@:native("Frame39__texture")
	public var frame39__texture:godot.Texture;

	@:native("Frame38__delaySec")
	public var frame38__delaySec:Single;

	@:native("Frame38__texture")
	public var frame38__texture:godot.Texture;

	@:native("Frame37__delaySec")
	public var frame37__delaySec:Single;

	@:native("Frame37__texture")
	public var frame37__texture:godot.Texture;

	@:native("Frame36__delaySec")
	public var frame36__delaySec:Single;

	@:native("Frame36__texture")
	public var frame36__texture:godot.Texture;

	@:native("Frame35__delaySec")
	public var frame35__delaySec:Single;

	@:native("Frame35__texture")
	public var frame35__texture:godot.Texture;

	@:native("Frame34__delaySec")
	public var frame34__delaySec:Single;

	@:native("Frame34__texture")
	public var frame34__texture:godot.Texture;

	@:native("Frame33__delaySec")
	public var frame33__delaySec:Single;

	@:native("Frame33__texture")
	public var frame33__texture:godot.Texture;

	@:native("Frame32__delaySec")
	public var frame32__delaySec:Single;

	@:native("Frame32__texture")
	public var frame32__texture:godot.Texture;

	@:native("Frame31__delaySec")
	public var frame31__delaySec:Single;

	@:native("Frame31__texture")
	public var frame31__texture:godot.Texture;

	@:native("Frame30__delaySec")
	public var frame30__delaySec:Single;

	@:native("Frame30__texture")
	public var frame30__texture:godot.Texture;

	@:native("Frame29__delaySec")
	public var frame29__delaySec:Single;

	@:native("Frame29__texture")
	public var frame29__texture:godot.Texture;

	@:native("Frame28__delaySec")
	public var frame28__delaySec:Single;

	@:native("Frame28__texture")
	public var frame28__texture:godot.Texture;

	@:native("Frame27__delaySec")
	public var frame27__delaySec:Single;

	@:native("Frame27__texture")
	public var frame27__texture:godot.Texture;

	@:native("Frame26__delaySec")
	public var frame26__delaySec:Single;

	@:native("Frame26__texture")
	public var frame26__texture:godot.Texture;

	@:native("Frame25__delaySec")
	public var frame25__delaySec:Single;

	@:native("Frame25__texture")
	public var frame25__texture:godot.Texture;

	@:native("Frame24__delaySec")
	public var frame24__delaySec:Single;

	@:native("Frame24__texture")
	public var frame24__texture:godot.Texture;

	@:native("Frame23__delaySec")
	public var frame23__delaySec:Single;

	@:native("Frame23__texture")
	public var frame23__texture:godot.Texture;

	@:native("Frame22__delaySec")
	public var frame22__delaySec:Single;

	@:native("Frame22__texture")
	public var frame22__texture:godot.Texture;

	@:native("Frame21__delaySec")
	public var frame21__delaySec:Single;

	@:native("Frame21__texture")
	public var frame21__texture:godot.Texture;

	@:native("Frame20__delaySec")
	public var frame20__delaySec:Single;

	@:native("Frame20__texture")
	public var frame20__texture:godot.Texture;

	@:native("Frame19__delaySec")
	public var frame19__delaySec:Single;

	@:native("Frame19__texture")
	public var frame19__texture:godot.Texture;

	@:native("Frame18__delaySec")
	public var frame18__delaySec:Single;

	@:native("Frame18__texture")
	public var frame18__texture:godot.Texture;

	@:native("Frame17__delaySec")
	public var frame17__delaySec:Single;

	@:native("Frame17__texture")
	public var frame17__texture:godot.Texture;

	@:native("Frame16__delaySec")
	public var frame16__delaySec:Single;

	@:native("Frame16__texture")
	public var frame16__texture:godot.Texture;

	@:native("Frame15__delaySec")
	public var frame15__delaySec:Single;

	@:native("Frame15__texture")
	public var frame15__texture:godot.Texture;

	@:native("Frame14__delaySec")
	public var frame14__delaySec:Single;

	@:native("Frame14__texture")
	public var frame14__texture:godot.Texture;

	@:native("Frame13__delaySec")
	public var frame13__delaySec:Single;

	@:native("Frame13__texture")
	public var frame13__texture:godot.Texture;

	@:native("Frame12__delaySec")
	public var frame12__delaySec:Single;

	@:native("Frame12__texture")
	public var frame12__texture:godot.Texture;

	@:native("Frame11__delaySec")
	public var frame11__delaySec:Single;

	@:native("Frame11__texture")
	public var frame11__texture:godot.Texture;

	@:native("Frame10__delaySec")
	public var frame10__delaySec:Single;

	@:native("Frame10__texture")
	public var frame10__texture:godot.Texture;

	@:native("Frame9__delaySec")
	public var frame9__delaySec:Single;

	@:native("Frame9__texture")
	public var frame9__texture:godot.Texture;

	@:native("Frame8__delaySec")
	public var frame8__delaySec:Single;

	@:native("Frame8__texture")
	public var frame8__texture:godot.Texture;

	@:native("Frame7__delaySec")
	public var frame7__delaySec:Single;

	@:native("Frame7__texture")
	public var frame7__texture:godot.Texture;

	@:native("Frame6__delaySec")
	public var frame6__delaySec:Single;

	@:native("Frame6__texture")
	public var frame6__texture:godot.Texture;

	@:native("Frame5__delaySec")
	public var frame5__delaySec:Single;

	@:native("Frame5__texture")
	public var frame5__texture:godot.Texture;

	@:native("Frame4__delaySec")
	public var frame4__delaySec:Single;

	@:native("Frame4__texture")
	public var frame4__texture:godot.Texture;

	@:native("Frame3__delaySec")
	public var frame3__delaySec:Single;

	@:native("Frame3__texture")
	public var frame3__texture:godot.Texture;

	@:native("Frame2__delaySec")
	public var frame2__delaySec:Single;

	@:native("Frame2__texture")
	public var frame2__texture:godot.Texture;

	@:native("Frame1__delaySec")
	public var frame1__delaySec:Single;

	@:native("Frame1__texture")
	public var frame1__texture:godot.Texture;

	@:native("Frame0__delaySec")
	public var frame0__delaySec:Single;

	@:native("Frame0__texture")
	public var frame0__texture:godot.Texture;

	/**		
		Animation speed in frames per second. This value defines the default time interval between two frames of the animation, and thus the overall duration of the animation loop based on the `godot.AnimatedTexture.frames` property. A value of 0 means no predefined number of frames per second, the animation will play according to each frame's frame delay (see `godot.AnimatedTexture.setFrameDelay`).
		
		For example, an animation with 8 frames, no frame delay and a `fps` value of 2 will run for 4 seconds, with each frame lasting 0.5 seconds.
	**/
	@:native("Fps")
	public var fps:Single;

	/**		
		If `true`, the animation will only play once and will not loop back to the first frame after reaching the end. Note that reaching the end will not set `godot.AnimatedTexture.pause` to `true`.
	**/
	@:native("Oneshot")
	public var oneshot:Bool;

	/**		
		If `true`, the animation will pause where it currently is (i.e. at `godot.AnimatedTexture.currentFrame`). The animation will continue from where it was paused when changing this property to `false`.
	**/
	@:native("Pause")
	public var pause:Bool;

	/**		
		Sets the currently visible frame of the texture.
	**/
	@:native("CurrentFrame")
	public var currentFrame:Int;

	/**		
		Number of frames to use in the animation. While you can create the frames independently with `godot.AnimatedTexture.setFrameTexture`, you need to set this value for the animation to take new frames into account. The maximum number of frames is `godot.AnimatedTexture.maxFrames`.
	**/
	@:native("Frames")
	public var frames:Int;

	/**		
		The maximum number of frames supported by `godot.AnimatedTexture`. If you need more frames in your animation, use `godot.AnimationPlayer` or `godot.AnimatedSprite`.
	**/
	@:native("MaxFrames")
	public static var MAX_FRAMES(default, never):Int;

	@:native("new")
	public function new():Void;

	@:native("SetFrames")
	public function setFrames(frames:Int):Void;

	@:native("GetFrames")
	public function getFrames():Int;

	@:native("SetCurrentFrame")
	public function setCurrentFrame(frame:Int):Void;

	@:native("GetCurrentFrame")
	public function getCurrentFrame():Int;

	@:native("SetPause")
	public function setPause(pause:Bool):Void;

	@:native("GetPause")
	public function getPause():Bool;

	@:native("SetOneshot")
	public function setOneshot(oneshot:Bool):Void;

	@:native("GetOneshot")
	public function getOneshot():Bool;

	@:native("SetFps")
	public function setFps(fps:Single):Void;

	@:native("GetFps")
	public function getFps():Single;

	/**		
		Assigns a `godot.Texture` to the given frame. Frame IDs start at 0, so the first frame has ID 0, and the last frame of the animation has ID `godot.AnimatedTexture.frames` - 1.
		
		You can define any number of textures up to `godot.AnimatedTexture.maxFrames`, but keep in mind that only frames from 0 to `godot.AnimatedTexture.frames` - 1 will be part of the animation.
	**/
	@:native("SetFrameTexture")
	public function setFrameTexture(frame:Int, texture:godot.Texture):Void;

	/**		
		Returns the given frame's `godot.Texture`.
	**/
	@:native("GetFrameTexture")
	public function getFrameTexture(frame:Int):godot.Texture;

	/**		
		Sets an additional delay (in seconds) between this frame and the next one, that will be added to the time interval defined by `godot.AnimatedTexture.fps`. By default, frames have no delay defined. If a delay value is defined, the final time interval between this frame and the next will be `1.0 / fps + delay`.
		
		For example, for an animation with 3 frames, 2 FPS and a frame delay on the second frame of 1.2, the resulting playback will be:
		
		```
		
		Frame 0: 0.5 s (1 / fps)
		Frame 1: 1.7 s (1 / fps + 1.2)
		Frame 2: 0.5 s (1 / fps)
		Total duration: 2.7 s
		
		```
	**/
	@:native("SetFrameDelay")
	public function setFrameDelay(frame:Int, delay:Single):Void;

	/**		
		Returns the given frame's delay value.
	**/
	@:native("GetFrameDelay")
	public function getFrameDelay(frame:Int):Single;
}
