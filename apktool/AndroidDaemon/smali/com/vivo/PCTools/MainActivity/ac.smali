.class final Lcom/vivo/PCTools/MainActivity/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/MainActivity/ac;->a:Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/ac;->a:Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;

    invoke-static {}, Lcom/vivo/PCTools/BaseApplication;->getInstance()Lcom/vivo/PCTools/BaseApplication;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->a(Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;Lcom/vivo/PCTools/BaseApplication;)V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/ac;->a:Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;

    invoke-static {v0}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->a(Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;)Lcom/vivo/PCTools/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/PCTools/BaseApplication;->isPCHelperConnnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/ac;->a:Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;

    invoke-static {v0}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->a(Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;)Lcom/vivo/PCTools/BaseApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/vivo/PCTools/BaseApplication;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/ac;->a:Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->a(Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;Z)V

    const-string v0, "WifiConnectActivity"

    const-string v1, "====disconnect wlan===="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
