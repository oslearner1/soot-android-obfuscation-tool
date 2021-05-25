.class public final Lorg/a/a/a/a/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lorg/a/a/a/a/a/c;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/a/a/a/a/a/a;->b:I

    new-instance v0, Lorg/a/a/a/a/a/c;

    invoke-direct {v0}, Lorg/a/a/a/a/a/c;-><init>()V

    iput-object v0, p0, Lorg/a/a/a/a/a/a;->a:Lorg/a/a/a/a/a/c;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/a/a/a/a/a/a;->b:I

    new-instance v0, Lorg/a/a/a/a/a/c;

    invoke-direct {v0, p1}, Lorg/a/a/a/a/a/c;-><init>(I)V

    iput-object v0, p0, Lorg/a/a/a/a/a/a;->a:Lorg/a/a/a/a/a/c;

    iput p1, p0, Lorg/a/a/a/a/a/a;->b:I

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    iget v0, p0, Lorg/a/a/a/a/a/a;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Lorg/a/a/a/a/a/c;

    iget v1, p0, Lorg/a/a/a/a/a/a;->b:I

    invoke-direct {v0, v1}, Lorg/a/a/a/a/a/c;-><init>(I)V

    iput-object v0, p0, Lorg/a/a/a/a/a/a;->a:Lorg/a/a/a/a/a/c;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/a/a/a/a/a/c;

    invoke-direct {v0}, Lorg/a/a/a/a/a/c;-><init>()V

    iput-object v0, p0, Lorg/a/a/a/a/a/a;->a:Lorg/a/a/a/a/a/c;

    goto :goto_0
.end method

.method public final count()I
    .locals 1

    iget-object v0, p0, Lorg/a/a/a/a/a/a;->a:Lorg/a/a/a/a/a/c;

    invoke-virtual {v0}, Lorg/a/a/a/a/a/c;->size()I

    move-result v0

    return v0
.end method

.method public final dequeue()B
    .locals 1

    iget-object v0, p0, Lorg/a/a/a/a/a/a;->a:Lorg/a/a/a/a/a/c;

    invoke-virtual {v0}, Lorg/a/a/a/a/a/c;->remove()B

    move-result v0

    return v0
.end method

.method public final enqueue(B)V
    .locals 1

    iget-object v0, p0, Lorg/a/a/a/a/a/a;->a:Lorg/a/a/a/a/a/c;

    invoke-virtual {v0, p1}, Lorg/a/a/a/a/a/c;->add(B)Z

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lorg/a/a/a/a/a/a;->a:Lorg/a/a/a/a/a/c;

    invoke-virtual {v0}, Lorg/a/a/a/a/a/c;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
