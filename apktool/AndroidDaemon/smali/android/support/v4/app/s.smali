.class public Landroid/support/v4/app/s;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/support/v4/util/ArrayMap;

.field public b:Ljava/util/ArrayList;

.field public c:Landroid/support/v4/app/az;

.field public d:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/o;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/s;->a:Landroid/support/v4/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/s;->b:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/v4/app/az;

    invoke-direct {v0}, Landroid/support/v4/app/az;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/s;->c:Landroid/support/v4/app/az;

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 0

    return-void
.end method

.method public onConnectionFailed()V
    .locals 0

    return-void
.end method

.method public onConnectionSuspended()V
    .locals 0

    return-void
.end method
