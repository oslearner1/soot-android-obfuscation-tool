.class final Lorg/a/a/a/a/a/c;
.super Ljava/lang/Object;


# instance fields
.field protected a:[B

.field protected b:I

.field protected c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/a/a/a/a/a/c;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The size must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/a/a/a/a/a/c;->a:[B

    iput v1, p0, Lorg/a/a/a/a/a/c;->b:I

    iput v1, p0, Lorg/a/a/a/a/a/c;->c:I

    return-void
.end method

.method static synthetic a(Lorg/a/a/a/a/a/c;I)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lorg/a/a/a/a/a/c;->a:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method static synthetic b(Lorg/a/a/a/a/a/c;I)I
    .locals 1

    add-int/lit8 v0, p1, -0x1

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/a/a/a/a/a/c;->a:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public final add(B)Z
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/a/a/a/a/a/c;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lorg/a/a/a/a/a/c;->a:[B

    array-length v2, v2

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lorg/a/a/a/a/a/c;->a:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [B

    iget v0, p0, Lorg/a/a/a/a/a/c;->b:I

    move v2, v1

    :cond_0
    :goto_0
    iget v4, p0, Lorg/a/a/a/a/a/c;->c:I

    if-ne v0, v4, :cond_3

    iput-object v3, p0, Lorg/a/a/a/a/a/c;->a:[B

    iput v1, p0, Lorg/a/a/a/a/a/c;->b:I

    iput v2, p0, Lorg/a/a/a/a/a/c;->c:I

    :cond_1
    iget-object v0, p0, Lorg/a/a/a/a/a/c;->a:[B

    iget v2, p0, Lorg/a/a/a/a/a/c;->c:I

    aput-byte p1, v0, v2

    iget v0, p0, Lorg/a/a/a/a/a/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/a/a/a/a/a/c;->c:I

    iget v0, p0, Lorg/a/a/a/a/a/c;->c:I

    iget-object v2, p0, Lorg/a/a/a/a/a/c;->a:[B

    array-length v2, v2

    if-lt v0, v2, :cond_2

    iput v1, p0, Lorg/a/a/a/a/a/c;->c:I

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    iget-object v4, p0, Lorg/a/a/a/a/a/c;->a:[B

    aget-byte v4, v4, v0

    aput-byte v4, v3, v2

    iget-object v4, p0, Lorg/a/a/a/a/a/c;->a:[B

    aput-byte v1, v4, v0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    iget-object v4, p0, Lorg/a/a/a/a/a/c;->a:[B

    array-length v4, v4

    if-ne v0, v4, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final get()B
    .locals 2

    invoke-virtual {p0}, Lorg/a/a/a/a/a/c;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The buffer is already empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/a/a/a/a/a/c;->a:[B

    iget v1, p0, Lorg/a/a/a/a/a/c;->b:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lorg/a/a/a/a/a/c;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lorg/a/a/a/a/a/d;

    invoke-direct {v0, p0}, Lorg/a/a/a/a/a/d;-><init>(Lorg/a/a/a/a/a/c;)V

    return-object v0
.end method

.method public final remove()B
    .locals 3

    invoke-virtual {p0}, Lorg/a/a/a/a/a/c;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The buffer is already empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/a/a/a/a/a/c;->a:[B

    iget v1, p0, Lorg/a/a/a/a/a/c;->b:I

    aget-byte v0, v0, v1

    iget v1, p0, Lorg/a/a/a/a/a/c;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/a/a/a/a/a/c;->b:I

    iget v1, p0, Lorg/a/a/a/a/a/c;->b:I

    iget-object v2, p0, Lorg/a/a/a/a/a/c;->a:[B

    array-length v2, v2

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lorg/a/a/a/a/a/c;->b:I

    :cond_1
    return v0
.end method

.method public final size()I
    .locals 2

    iget v0, p0, Lorg/a/a/a/a/a/c;->c:I

    iget v1, p0, Lorg/a/a/a/a/a/c;->b:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/a/a/a/a/a/c;->a:[B

    array-length v0, v0

    iget v1, p0, Lorg/a/a/a/a/a/c;->b:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/a/a/a/a/a/c;->c:I

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/a/a/a/a/a/c;->c:I

    iget v1, p0, Lorg/a/a/a/a/a/c;->b:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method
