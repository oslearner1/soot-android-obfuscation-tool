.class final Landroid/support/v4/media/al;
.super Ljava/lang/Object;


# instance fields
.field final a:Landroid/content/Context;

.field final b:Landroid/media/AudioManager;

.field final c:Landroid/support/v4/media/ak;

.field final d:Landroid/content/IntentFilter;

.field final e:Landroid/content/Intent;

.field final f:Landroid/content/BroadcastReceiver;

.field final g:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

.field final h:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

.field i:Landroid/app/PendingIntent;

.field j:Landroid/media/RemoteControlClient;

.field k:Z

.field l:I

.field private m:Landroid/view/View;

.field private n:Ljava/lang/String;

.field private o:Landroid/view/ViewTreeObserver$OnWindowAttachListener;

.field private p:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

.field private q:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/view/View;Landroid/support/v4/media/ak;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/media/am;

    invoke-direct {v0, p0}, Landroid/support/v4/media/am;-><init>(Landroid/support/v4/media/al;)V

    iput-object v0, p0, Landroid/support/v4/media/al;->o:Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    new-instance v0, Landroid/support/v4/media/an;

    invoke-direct {v0, p0}, Landroid/support/v4/media/an;-><init>(Landroid/support/v4/media/al;)V

    iput-object v0, p0, Landroid/support/v4/media/al;->p:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    new-instance v0, Landroid/support/v4/media/ao;

    invoke-direct {v0, p0}, Landroid/support/v4/media/ao;-><init>(Landroid/support/v4/media/al;)V

    iput-object v0, p0, Landroid/support/v4/media/al;->f:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/support/v4/media/ap;

    invoke-direct {v0, p0}, Landroid/support/v4/media/ap;-><init>(Landroid/support/v4/media/al;)V

    iput-object v0, p0, Landroid/support/v4/media/al;->q:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    new-instance v0, Landroid/support/v4/media/aq;

    invoke-direct {v0, p0}, Landroid/support/v4/media/aq;-><init>(Landroid/support/v4/media/al;)V

    iput-object v0, p0, Landroid/support/v4/media/al;->g:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    new-instance v0, Landroid/support/v4/media/ar;

    invoke-direct {v0, p0}, Landroid/support/v4/media/ar;-><init>(Landroid/support/v4/media/al;)V

    iput-object v0, p0, Landroid/support/v4/media/al;->h:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/media/al;->l:I

    iput-object p1, p0, Landroid/support/v4/media/al;->a:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v4/media/al;->b:Landroid/media/AudioManager;

    iput-object p3, p0, Landroid/support/v4/media/al;->m:Landroid/view/View;

    iput-object p4, p0, Landroid/support/v4/media/al;->c:Landroid/support/v4/media/ak;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":transport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/al;->n:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Landroid/support/v4/media/al;->n:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v4/media/al;->e:Landroid/content/Intent;

    iget-object v0, p0, Landroid/support/v4/media/al;->e:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/al;->d:Landroid/content/IntentFilter;

    iget-object v0, p0, Landroid/support/v4/media/al;->d:Landroid/content/IntentFilter;

    iget-object v1, p0, Landroid/support/v4/media/al;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/media/al;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/al;->o:Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    iget-object v0, p0, Landroid/support/v4/media/al;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/al;->p:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    return-void
.end method

.method private d()V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/media/al;->r:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/media/al;->r:Z

    iget-object v0, p0, Landroid/support/v4/media/al;->b:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/support/v4/media/al;->q:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Landroid/support/v4/media/al;->r:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Landroid/support/v4/media/al;->r:Z

    iget-object v0, p0, Landroid/support/v4/media/al;->b:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/support/v4/media/al;->q:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_0
    return-void
.end method

.method final b()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/media/al;->d()V

    iget-boolean v0, p0, Landroid/support/v4/media/al;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/media/al;->k:Z

    iget-object v0, p0, Landroid/support/v4/media/al;->b:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/support/v4/media/al;->j:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V

    iget-object v0, p0, Landroid/support/v4/media/al;->b:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/support/v4/media/al;->i:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method final c()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v4/media/al;->b()V

    iget-object v0, p0, Landroid/support/v4/media/al;->i:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/al;->a:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/media/al;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Landroid/support/v4/media/al;->i:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    iput-object v2, p0, Landroid/support/v4/media/al;->i:Landroid/app/PendingIntent;

    iput-object v2, p0, Landroid/support/v4/media/al;->j:Landroid/media/RemoteControlClient;

    :cond_0
    return-void
.end method

.method public final destroy()V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/media/al;->c()V

    iget-object v0, p0, Landroid/support/v4/media/al;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/al;->o:Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    iget-object v0, p0, Landroid/support/v4/media/al;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/al;->p:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    return-void
.end method

.method public final getRemoteControlClient()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/al;->j:Landroid/media/RemoteControlClient;

    return-object v0
.end method

.method public final pausePlaying()V
    .locals 3

    const/4 v2, 0x2

    iget v0, p0, Landroid/support/v4/media/al;->l:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iput v2, p0, Landroid/support/v4/media/al;->l:I

    iget-object v0, p0, Landroid/support/v4/media/al;->j:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v2}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    :cond_0
    invoke-direct {p0}, Landroid/support/v4/media/al;->d()V

    return-void
.end method

.method public final refreshState(ZJI)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/media/al;->j:Landroid/media/RemoteControlClient;

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/support/v4/media/al;->j:Landroid/media/RemoteControlClient;

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    move v1, v0

    :goto_0
    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v2, v1, p2, p3, v0}, Landroid/media/RemoteControlClient;->setPlaybackState(IJF)V

    iget-object v0, p0, Landroid/support/v4/media/al;->j:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, p4}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final startPlaying()V
    .locals 2

    const/4 v1, 0x3

    iget v0, p0, Landroid/support/v4/media/al;->l:I

    if-eq v0, v1, :cond_0

    iput v1, p0, Landroid/support/v4/media/al;->l:I

    iget-object v0, p0, Landroid/support/v4/media/al;->j:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/media/al;->k:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/media/al;->a()V

    :cond_1
    return-void
.end method

.method public final stopPlaying()V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Landroid/support/v4/media/al;->l:I

    if-eq v0, v1, :cond_0

    iput v1, p0, Landroid/support/v4/media/al;->l:I

    iget-object v0, p0, Landroid/support/v4/media/al;->j:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    :cond_0
    invoke-direct {p0}, Landroid/support/v4/media/al;->d()V

    return-void
.end method
