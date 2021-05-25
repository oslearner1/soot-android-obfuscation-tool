.class final Lcom/vivo/PCTools/Pcserver/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/Pcserver/ServerService;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/Pcserver/ServerService;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/Pcserver/h;->a:Lcom/vivo/PCTools/Pcserver/ServerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/PCTools/Pcserver/h;->a:Lcom/vivo/PCTools/Pcserver/ServerService;

    invoke-static {v0}, Lcom/vivo/PCTools/Pcserver/ServerService;->a(Lcom/vivo/PCTools/Pcserver/ServerService;)Lcom/vivo/PCTools/Pcserver/j;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/Pcserver/j;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
