.class final Landroid/support/v4/media/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowAttachListener;


# instance fields
.field private synthetic a:Landroid/support/v4/media/al;


# direct methods
.method constructor <init>(Landroid/support/v4/media/al;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/am;->a:Landroid/support/v4/media/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onWindowAttached()V
    .locals 5

    iget-object v0, p0, Landroid/support/v4/media/am;->a:Landroid/support/v4/media/al;

    iget-object v1, v0, Landroid/support/v4/media/al;->a:Landroid/content/Context;

    iget-object v2, v0, Landroid/support/v4/media/al;->f:Landroid/content/BroadcastReceiver;

    iget-object v3, v0, Landroid/support/v4/media/al;->d:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, v0, Landroid/support/v4/media/al;->a:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, v0, Landroid/support/v4/media/al;->e:Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/media/al;->i:Landroid/app/PendingIntent;

    new-instance v1, Landroid/media/RemoteControlClient;

    iget-object v2, v0, Landroid/support/v4/media/al;->i:Landroid/app/PendingIntent;

    invoke-direct {v1, v2}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    iput-object v1, v0, Landroid/support/v4/media/al;->j:Landroid/media/RemoteControlClient;

    iget-object v1, v0, Landroid/support/v4/media/al;->j:Landroid/media/RemoteControlClient;

    iget-object v2, v0, Landroid/support/v4/media/al;->g:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    invoke-virtual {v1, v2}, Landroid/media/RemoteControlClient;->setOnGetPlaybackPositionListener(Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;)V

    iget-object v1, v0, Landroid/support/v4/media/al;->j:Landroid/media/RemoteControlClient;

    iget-object v0, v0, Landroid/support/v4/media/al;->h:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    invoke-virtual {v1, v0}, Landroid/media/RemoteControlClient;->setPlaybackPositionUpdateListener(Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;)V

    return-void
.end method

.method public final onWindowDetached()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/am;->a:Landroid/support/v4/media/al;

    invoke-virtual {v0}, Landroid/support/v4/media/al;->c()V

    return-void
.end method
