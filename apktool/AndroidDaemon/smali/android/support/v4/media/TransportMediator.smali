.class public Landroid/support/v4/media/TransportMediator;
.super Landroid/support/v4/media/ai;


# instance fields
.field final a:Landroid/support/v4/media/as;

.field final b:Landroid/view/KeyEvent$Callback;

.field private c:Landroid/content/Context;

.field private d:Landroid/media/AudioManager;

.field private e:Landroid/view/View;

.field private f:Ljava/lang/Object;

.field private g:Landroid/support/v4/media/al;

.field private h:Ljava/util/ArrayList;

.field private i:Landroid/support/v4/media/ak;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/media/as;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v4/media/TransportMediator;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/support/v4/media/as;)V

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/support/v4/media/as;)V
    .locals 5

    invoke-direct {p0}, Landroid/support/v4/media/ai;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/TransportMediator;->h:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/v4/media/ak;

    invoke-direct {v0, p0}, Landroid/support/v4/media/ak;-><init>(Landroid/support/v4/media/TransportMediator;)V

    iput-object v0, p0, Landroid/support/v4/media/TransportMediator;->i:Landroid/support/v4/media/ak;

    new-instance v0, Landroid/support/v4/media/aj;

    invoke-direct {v0, p0}, Landroid/support/v4/media/aj;-><init>(Landroid/support/v4/media/TransportMediator;)V

    iput-object v0, p0, Landroid/support/v4/media/TransportMediator;->b:Landroid/view/KeyEvent$Callback;

    if-eqz p1, :cond_1

    move-object v0, p1

    :goto_0
    iput-object v0, p0, Landroid/support/v4/media/TransportMediator;->c:Landroid/content/Context;

    iput-object p3, p0, Landroid/support/v4/media/TransportMediator;->a:Landroid/support/v4/media/as;

    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->c:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/support/v4/media/TransportMediator;->d:Landroid/media/AudioManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Landroid/support/v4/media/TransportMediator;->e:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->e:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/m;->getKeyDispatcherState(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/TransportMediator;->f:Ljava/lang/Object;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/media/al;

    iget-object v1, p0, Landroid/support/v4/media/TransportMediator;->c:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/media/TransportMediator;->d:Landroid/media/AudioManager;

    iget-object v3, p0, Landroid/support/v4/media/TransportMediator;->e:Landroid/view/View;

    iget-object v4, p0, Landroid/support/v4/media/TransportMediator;->i:Landroid/support/v4/media/ak;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/media/al;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/view/View;Landroid/support/v4/media/ak;)V

    iput-object v0, p0, Landroid/support/v4/media/TransportMediator;->g:Landroid/support/v4/media/al;

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/media/TransportMediator;->g:Landroid/support/v4/media/al;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/view/View;Landroid/support/v4/media/as;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/support/v4/media/TransportMediator;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/support/v4/media/as;)V

    return-void
.end method

.method static a(I)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x59 -> :sswitch_0
        0x5a -> :sswitch_0
        0x5b -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method private a()[Landroid/support/v4/app/ac;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/support/v4/app/ac;

    iget-object v1, p0, Landroid/support/v4/media/TransportMediator;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method

.method private b()V
    .locals 4

    invoke-direct {p0}, Landroid/support/v4/media/TransportMediator;->a()[Landroid/support/v4/app/ac;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3, p0}, Landroid/support/v4/app/ac;->onPlayingChanged(Landroid/support/v4/media/ai;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c()V
    .locals 5

    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->g:Landroid/support/v4/media/al;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->g:Landroid/support/v4/media/al;

    iget-object v1, p0, Landroid/support/v4/media/TransportMediator;->a:Landroid/support/v4/media/as;

    invoke-virtual {v1}, Landroid/support/v4/media/as;->onIsPlaying()Z

    move-result v1

    iget-object v2, p0, Landroid/support/v4/media/TransportMediator;->a:Landroid/support/v4/media/as;

    invoke-virtual {v2}, Landroid/support/v4/media/as;->onGetCurrentPosition()J

    move-result-wide v2

    iget-object v4, p0, Landroid/support/v4/media/TransportMediator;->a:Landroid/support/v4/media/as;

    invoke-virtual {v4}, Landroid/support/v4/media/as;->onGetTransportControlFlags()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/media/al;->refreshState(ZJI)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->g:Landroid/support/v4/media/al;

    invoke-virtual {v0}, Landroid/support/v4/media/al;->destroy()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->b:Landroid/view/KeyEvent$Callback;

    iget-object v1, p0, Landroid/support/v4/media/TransportMediator;->f:Ljava/lang/Object;

    invoke-static {p1, v0, v1, p0}, Landroid/support/v4/view/m;->dispatch(Landroid/view/KeyEvent;Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->a:Landroid/support/v4/media/as;

    invoke-virtual {v0}, Landroid/support/v4/media/as;->onGetBufferPercentage()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->a:Landroid/support/v4/media/as;

    invoke-virtual {v0}, Landroid/support/v4/media/as;->onGetCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->a:Landroid/support/v4/media/as;

    invoke-virtual {v0}, Landroid/support/v4/media/as;->onGetDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRemoteControlClient()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->g:Landroid/support/v4/media/al;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->g:Landroid/support/v4/media/al;

    invoke-virtual {v0}, Landroid/support/v4/media/al;->getRemoteControlClient()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTransportControlFlags()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->a:Landroid/support/v4/media/as;

    invoke-virtual {v0}, Landroid/support/v4/media/as;->onGetTransportControlFlags()I

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->a:Landroid/support/v4/media/as;

    invoke-virtual {v0}, Landroid/support/v4/media/as;->onIsPlaying()Z

    move-result v0

    return v0
.end method

.method public pausePlaying()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->g:Landroid/support/v4/media/al;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->g:Landroid/support/v4/media/al;

    invoke-virtual {v0}, Landroid/support/v4/media/al;->pausePlaying()V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->a:Landroid/support/v4/media/as;

    invoke-virtual {v0}, Landroid/support/v4/media/as;->onPause()V

    invoke-direct {p0}, Landroid/support/v4/media/TransportMediator;->c()V

    invoke-direct {p0}, Landroid/support/v4/media/TransportMediator;->b()V

    return-void
.end method

.method public refreshState()V
    .locals 4

    invoke-direct {p0}, Landroid/support/v4/media/TransportMediator;->c()V

    invoke-direct {p0}, Landroid/support/v4/media/TransportMediator;->b()V

    invoke-direct {p0}, Landroid/support/v4/media/TransportMediator;->a()[Landroid/support/v4/app/ac;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3, p0}, Landroid/support/v4/app/ac;->onTransportControlsChanged(Landroid/support/v4/media/ai;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerStateListener$6a083a8c(Landroid/support/v4/app/ac;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public seekTo(J)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->a:Landroid/support/v4/media/as;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/as;->onSeekTo(J)V

    return-void
.end method

.method public startPlaying()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->g:Landroid/support/v4/media/al;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->g:Landroid/support/v4/media/al;

    invoke-virtual {v0}, Landroid/support/v4/media/al;->startPlaying()V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->a:Landroid/support/v4/media/as;

    invoke-virtual {v0}, Landroid/support/v4/media/as;->onStart()V

    invoke-direct {p0}, Landroid/support/v4/media/TransportMediator;->c()V

    invoke-direct {p0}, Landroid/support/v4/media/TransportMediator;->b()V

    return-void
.end method

.method public stopPlaying()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->g:Landroid/support/v4/media/al;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->g:Landroid/support/v4/media/al;

    invoke-virtual {v0}, Landroid/support/v4/media/al;->stopPlaying()V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->a:Landroid/support/v4/media/as;

    invoke-virtual {v0}, Landroid/support/v4/media/as;->onStop()V

    invoke-direct {p0}, Landroid/support/v4/media/TransportMediator;->c()V

    invoke-direct {p0}, Landroid/support/v4/media/TransportMediator;->b()V

    return-void
.end method

.method public unregisterStateListener$6a083a8c(Landroid/support/v4/app/ac;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/TransportMediator;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
