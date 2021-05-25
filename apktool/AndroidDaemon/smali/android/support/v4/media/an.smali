.class final Landroid/support/v4/media/an;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# instance fields
.field private synthetic a:Landroid/support/v4/media/al;


# direct methods
.method constructor <init>(Landroid/support/v4/media/al;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/an;->a:Landroid/support/v4/media/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onWindowFocusChanged(Z)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v4/media/an;->a:Landroid/support/v4/media/al;

    iget-boolean v1, v0, Landroid/support/v4/media/al;->k:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/media/al;->k:Z

    iget-object v1, v0, Landroid/support/v4/media/al;->b:Landroid/media/AudioManager;

    iget-object v2, v0, Landroid/support/v4/media/al;->i:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/app/PendingIntent;)V

    iget-object v1, v0, Landroid/support/v4/media/al;->b:Landroid/media/AudioManager;

    iget-object v2, v0, Landroid/support/v4/media/al;->j:Landroid/media/RemoteControlClient;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    iget v1, v0, Landroid/support/v4/media/al;->l:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/media/al;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/an;->a:Landroid/support/v4/media/al;

    invoke-virtual {v0}, Landroid/support/v4/media/al;->b()V

    goto :goto_0
.end method
