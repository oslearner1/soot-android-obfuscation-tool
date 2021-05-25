.class final Lcom/vivo/PCTools/adapter/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/Class;

.field private final b:Landroid/os/Bundle;

.field private c:Landroid/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vivo/PCTools/adapter/b;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/vivo/PCTools/adapter/b;->b:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic a(Lcom/vivo/PCTools/adapter/b;)Landroid/support/v4/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/adapter/b;->c:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic a(Lcom/vivo/PCTools/adapter/b;Landroid/support/v4/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/adapter/b;->c:Landroid/support/v4/app/Fragment;

    return-void
.end method

.method static synthetic b(Lcom/vivo/PCTools/adapter/b;)Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/adapter/b;->a:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic c(Lcom/vivo/PCTools/adapter/b;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/adapter/b;->b:Landroid/os/Bundle;

    return-object v0
.end method
