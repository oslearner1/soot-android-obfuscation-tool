.class public abstract Landroid/support/v4/view/a/h;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/support/v4/view/a/f;->a()Landroid/support/v4/view/a/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/view/a/e;->newAccessiblityStateChangeListener(Landroid/support/v4/view/a/h;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/a/h;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract onAccessibilityStateChanged(Z)V
.end method
