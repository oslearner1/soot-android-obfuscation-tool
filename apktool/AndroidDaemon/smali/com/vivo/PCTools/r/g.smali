.class final Lcom/vivo/PCTools/r/g;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private final synthetic a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/r/f;Ljava/lang/Object;)V
    .locals 0

    iput-object p2, p0, Lcom/vivo/PCTools/r/g;->a:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "SmsService"

    const-string v1, "com.vivo.PCTools.sms.backup_finish"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/vivo/PCTools/r/g;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/vivo/PCTools/r/g;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
