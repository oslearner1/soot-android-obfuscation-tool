.class final Lcom/vivo/PCTools/PcFtpRemote/a;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/PcFtpRemote/a;->a:Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/a;->a:Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;

    invoke-virtual {v0}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->stopSelf()V

    :cond_0
    return-void
.end method
