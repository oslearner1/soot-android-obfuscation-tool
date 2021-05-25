.class final Landroid/support/v4/app/ah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/support/v4/app/af;


# direct methods
.method constructor <init>(Landroid/support/v4/app/af;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/af;

    iget-object v1, p0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/af;

    iget-object v1, v1, Landroid/support/v4/app/af;->e:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->c()Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/af;->a(Ljava/lang/String;II)Z

    return-void
.end method
