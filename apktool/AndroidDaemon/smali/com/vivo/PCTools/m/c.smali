.class final Lcom/vivo/PCTools/m/c;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/m/b;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "level"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    return-void
.end method
