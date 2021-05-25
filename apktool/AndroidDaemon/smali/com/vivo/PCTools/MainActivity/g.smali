.class final Lcom/vivo/PCTools/MainActivity/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/MainActivity/g;->a:Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-static {}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/g;->a:Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;

    invoke-static {v1}, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->b(Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/g;->a:Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;

    invoke-static {v1}, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->b(Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/g;->a:Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;

    iget-object v0, v0, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->a:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/g;->a:Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;

    invoke-static {v0}, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->c(Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
