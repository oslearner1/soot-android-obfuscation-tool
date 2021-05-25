.class public final Landroid/support/v4/content/h;
.super Landroid/database/ContentObserver;


# instance fields
.field private synthetic a:Landroid/support/v4/content/g;


# direct methods
.method public constructor <init>(Landroid/support/v4/content/g;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v4/content/h;->a:Landroid/support/v4/content/g;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onChange(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/content/h;->a:Landroid/support/v4/content/g;

    invoke-virtual {v0}, Landroid/support/v4/content/g;->onContentChanged()V

    return-void
.end method
