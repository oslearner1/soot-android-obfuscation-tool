.class final Lcom/vivo/PCTools/PcFtpRemote/e;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/PcFtpRemote/e;->a:Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/e;->a:Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;

    iget-object v0, v0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->a:Lorg/swiftp/af;

    const/4 v1, 0x3

    const-string v2, "Wifi status broadcast received"

    invoke-virtual {v0, v1, v2}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/e;->a:Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;

    invoke-virtual {v0}, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->updateUi()V

    return-void
.end method
