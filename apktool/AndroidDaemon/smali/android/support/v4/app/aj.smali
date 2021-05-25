.class final Landroid/support/v4/app/aj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:I

.field private synthetic c:Landroid/support/v4/app/af;


# direct methods
.method constructor <init>(Landroid/support/v4/app/af;II)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/aj;->c:Landroid/support/v4/app/af;

    iput p2, p0, Landroid/support/v4/app/aj;->a:I

    iput p3, p0, Landroid/support/v4/app/aj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/app/aj;->c:Landroid/support/v4/app/af;

    iget-object v1, p0, Landroid/support/v4/app/aj;->c:Landroid/support/v4/app/af;

    iget-object v1, v1, Landroid/support/v4/app/af;->e:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->c()Landroid/os/Handler;

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v4/app/aj;->a:I

    iget v3, p0, Landroid/support/v4/app/aj;->b:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/af;->a(Ljava/lang/String;II)Z

    return-void
.end method
