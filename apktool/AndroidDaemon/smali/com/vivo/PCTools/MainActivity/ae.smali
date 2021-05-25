.class final Lcom/vivo/PCTools/MainActivity/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/MainActivity/ae;->a:Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/ae;->a:Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;

    invoke-static {v0}, Landroid/support/v4/view/ae;->stopServerService(Landroid/content/Context;)V

    const-string v0, "WifiConnectActivity"

    const-string v1, "[OK]onfinish"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/ae;->a:Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;

    invoke-static {v0}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->b(Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
