.class Landroid/support/v4/media/session/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/media/session/g;


# instance fields
.field protected final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/media/session/c;->fromToken(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/h;->a:Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v4/media/session/h;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/media/session/c;->fromToken(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/h;->a:Ljava/lang/Object;

    return-void
.end method

.method public static createMetadataUpdateListener(Landroid/support/v4/media/session/af;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/support/v4/media/session/ai;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/ai;-><init>(Landroid/support/v4/media/session/af;)V

    return-object v0
.end method

.method public static getAction(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    check-cast p0, Landroid/media/session/PlaybackState$CustomAction;

    invoke-virtual {p0}, Landroid/media/session/PlaybackState$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExtras(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 1

    check-cast p0, Landroid/media/session/PlaybackState$CustomAction;

    invoke-virtual {p0}, Landroid/media/session/PlaybackState$CustomAction;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static getIcon(Ljava/lang/Object;)I
    .locals 1

    check-cast p0, Landroid/media/session/PlaybackState$CustomAction;

    invoke-virtual {p0}, Landroid/media/session/PlaybackState$CustomAction;->getIcon()I

    move-result v0

    return v0
.end method

.method public static getName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    check-cast p0, Landroid/media/session/PlaybackState$CustomAction;

    invoke-virtual {p0}, Landroid/media/session/PlaybackState$CustomAction;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/media/session/PlaybackState$CustomAction$Builder;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/session/PlaybackState$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, p3}, Landroid/media/session/PlaybackState$CustomAction$Builder;->setExtras(Landroid/os/Bundle;)Landroid/media/session/PlaybackState$CustomAction$Builder;

    invoke-virtual {v0}, Landroid/media/session/PlaybackState$CustomAction$Builder;->build()Landroid/media/session/PlaybackState$CustomAction;

    move-result-object v0

    return-object v0
.end method

.method public static setMetadata(Ljava/lang/Object;Landroid/os/Bundle;J)V
    .locals 6

    const v5, 0x10000001

    check-cast p0, Landroid/media/RemoteControlClient;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/media/session/c;->a(Landroid/os/Bundle;Landroid/media/RemoteControlClient$MetadataEditor;)V

    if-eqz p1, :cond_2

    const-string v1, "android.media.metadata.YEAR"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    const-string v2, "android.media.metadata.YEAR"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_0
    const-string v1, "android.media.metadata.RATING"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x65

    const-string v2, "android.media.metadata.RATING"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putObject(ILjava/lang/Object;)Landroid/media/MediaMetadataEditor;

    :cond_1
    const-string v1, "android.media.metadata.USER_RATING"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "android.media.metadata.USER_RATING"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putObject(ILjava/lang/Object;)Landroid/media/MediaMetadataEditor;

    :cond_2
    const-wide/16 v1, 0x80

    and-long/2addr v1, p2

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    invoke-virtual {v0, v5}, Landroid/media/RemoteControlClient$MetadataEditor;->addEditableKey(I)V

    :cond_3
    invoke-virtual {v0}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    return-void
.end method

.method public static setOnMetadataUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Landroid/media/RemoteControlClient;

    check-cast p1, Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

    invoke-virtual {p0, p1}, Landroid/media/RemoteControlClient;->setMetadataUpdateListener(Landroid/media/RemoteControlClient$OnMetadataUpdateListener;)V

    return-void
.end method

.method public static setTransportControlFlags(Ljava/lang/Object;J)V
    .locals 5

    check-cast p0, Landroid/media/RemoteControlClient;

    invoke-static {p1, p2}, Landroid/support/v4/media/session/ag;->a(J)I

    move-result v0

    const-wide/16 v1, 0x80

    and-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    or-int/lit16 v0, v0, 0x200

    :cond_0
    invoke-virtual {p0, v0}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    return-void
.end method


# virtual methods
.method public adjustVolume(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/h;->a:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/c;->adjustVolume(Ljava/lang/Object;II)V

    return-void
.end method

.method public dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/h;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/c;->dispatchMediaButtonEvent(Ljava/lang/Object;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/h;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/c;->getExtras(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFlags()J
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/session/h;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/c;->getFlags(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaController()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/h;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public getMetadata()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/h;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/c;->getMetadata(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/support/v4/media/MediaMetadataCompat;->fromMediaMetadata(Ljava/lang/Object;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/h;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/c;->getPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackInfo()Landroid/support/v4/media/session/k;
    .locals 6

    iget-object v0, p0, Landroid/support/v4/media/session/h;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/c;->getPlaybackInfo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v0, Landroid/support/v4/media/session/k;

    invoke-static {v5}, Landroid/support/v4/media/session/c;->getPlaybackType(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v5}, Landroid/support/v4/media/session/c;->getLegacyAudioStream(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v5}, Landroid/support/v4/media/session/c;->getVolumeControl(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v5}, Landroid/support/v4/media/session/c;->getMaxVolume(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v5}, Landroid/support/v4/media/session/c;->getCurrentVolume(Ljava/lang/Object;)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/k;-><init>(IIIII)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/h;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/c;->getPlaybackState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->fromPlaybackState(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getQueue()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/media/session/h;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/c;->getQueue(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->obtain(Ljava/lang/Object;)Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getQueueTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/h;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/c;->getQueueTitle(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getRatingType()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/h;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/c;->getRatingType(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSessionActivity()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/h;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/c;->getSessionActivity(Ljava/lang/Object;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getTransportControls()Landroid/support/v4/media/session/l;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/session/h;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/c;->getTransportControls(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/support/v4/media/session/m;

    invoke-direct {v0, v1}, Landroid/support/v4/media/session/m;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerCallback(Landroid/support/v4/media/session/d;Landroid/os/Handler;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/session/h;->a:Ljava/lang/Object;

    invoke-static {p1}, Landroid/support/v4/media/session/d;->c(Landroid/support/v4/media/session/d;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/support/v4/media/session/c;->registerCallback(Ljava/lang/Object;Ljava/lang/Object;Landroid/os/Handler;)V

    return-void
.end method

.method public sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/h;->a:Ljava/lang/Object;

    invoke-static {v0, p1, p2, p3}, Landroid/support/v4/media/session/c;->sendCommand(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public setVolumeTo(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/h;->a:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/c;->setVolumeTo(Ljava/lang/Object;II)V

    return-void
.end method

.method public unregisterCallback(Landroid/support/v4/media/session/d;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/session/h;->a:Ljava/lang/Object;

    invoke-static {p1}, Landroid/support/v4/media/session/d;->c(Landroid/support/v4/media/session/d;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/media/session/c;->unregisterCallback(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
