.class final Lcom/vivo/PCTools/MainActivity/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/MainActivity/z;->a:Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/z;->a:Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;

    invoke-static {v1}, Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;->a(Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/z;->a:Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
