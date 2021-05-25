.class public final Lcom/vivo/PCTools/Pcserver/i;
.super Landroid/os/Binder;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/Pcserver/ServerService;


# direct methods
.method public constructor <init>(Lcom/vivo/PCTools/Pcserver/ServerService;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/Pcserver/i;->a:Lcom/vivo/PCTools/Pcserver/ServerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public final getService()Lcom/vivo/PCTools/Pcserver/ServerService;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/Pcserver/i;->a:Lcom/vivo/PCTools/Pcserver/ServerService;

    return-object v0
.end method
