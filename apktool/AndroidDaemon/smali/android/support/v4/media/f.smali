.class final Landroid/support/v4/media/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/support/v4/media/c;

.field private synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/media/d;Landroid/support/v4/media/c;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Landroid/support/v4/media/f;->a:Landroid/support/v4/media/c;

    iput-object p3, p0, Landroid/support/v4/media/f;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/f;->a:Landroid/support/v4/media/c;

    iget-object v1, p0, Landroid/support/v4/media/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/c;->onError(Ljava/lang/String;)V

    return-void
.end method
