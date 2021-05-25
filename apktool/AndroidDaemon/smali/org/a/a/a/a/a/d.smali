.class final Lorg/a/a/a/a/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private a:I

.field private b:I

.field private synthetic c:Lorg/a/a/a/a/a/c;


# direct methods
.method constructor <init>(Lorg/a/a/a/a/a/c;)V
    .locals 1

    iput-object p1, p0, Lorg/a/a/a/a/a/d;->c:Lorg/a/a/a/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lorg/a/a/a/a/a/c;->b:I

    iput v0, p0, Lorg/a/a/a/a/a/d;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/a/a/a/a/a/d;->b:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lorg/a/a/a/a/a/d;->a:I

    iget-object v1, p0, Lorg/a/a/a/a/a/d;->c:Lorg/a/a/a/a/a/c;

    iget v1, v1, Lorg/a/a/a/a/a/c;->c:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lorg/a/a/a/a/a/d;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/a/a/a/a/a/d;->a:I

    iput v0, p0, Lorg/a/a/a/a/a/d;->b:I

    iget-object v0, p0, Lorg/a/a/a/a/a/d;->c:Lorg/a/a/a/a/a/c;

    iget v1, p0, Lorg/a/a/a/a/a/d;->a:I

    invoke-static {v0, v1}, Lorg/a/a/a/a/a/c;->a(Lorg/a/a/a/a/a/c;I)I

    move-result v0

    iput v0, p0, Lorg/a/a/a/a/a/d;->a:I

    new-instance v0, Ljava/lang/Byte;

    iget-object v1, p0, Lorg/a/a/a/a/a/d;->c:Lorg/a/a/a/a/a/c;

    iget-object v1, v1, Lorg/a/a/a/a/a/c;->a:[B

    iget v2, p0, Lorg/a/a/a/a/a/d;->b:I

    aget-byte v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    return-object v0
.end method

.method public final remove()V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, -0x1

    iget v0, p0, Lorg/a/a/a/a/a/d;->b:I

    if-ne v0, v5, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/a/a/a/a/a/d;->b:I

    iget-object v2, p0, Lorg/a/a/a/a/a/d;->c:Lorg/a/a/a/a/a/c;

    iget v2, v2, Lorg/a/a/a/a/a/c;->b:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/a/a/a/a/a/d;->c:Lorg/a/a/a/a/a/c;

    invoke-virtual {v0}, Lorg/a/a/a/a/a/c;->remove()B

    iput v5, p0, Lorg/a/a/a/a/a/d;->b:I

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/a/a/a/a/a/d;->b:I

    add-int/lit8 v0, v0, 0x1

    :goto_1
    iget-object v2, p0, Lorg/a/a/a/a/a/d;->c:Lorg/a/a/a/a/a/c;

    iget v2, v2, Lorg/a/a/a/a/a/c;->c:I

    if-ne v0, v2, :cond_2

    iput v5, p0, Lorg/a/a/a/a/a/d;->b:I

    iget-object v0, p0, Lorg/a/a/a/a/a/d;->c:Lorg/a/a/a/a/a/c;

    iget-object v2, p0, Lorg/a/a/a/a/a/d;->c:Lorg/a/a/a/a/a/c;

    iget-object v3, p0, Lorg/a/a/a/a/a/d;->c:Lorg/a/a/a/a/a/c;

    iget v3, v3, Lorg/a/a/a/a/a/c;->c:I

    invoke-static {v2, v3}, Lorg/a/a/a/a/a/c;->b(Lorg/a/a/a/a/a/c;I)I

    move-result v2

    iput v2, v0, Lorg/a/a/a/a/a/c;->c:I

    iget-object v0, p0, Lorg/a/a/a/a/a/d;->c:Lorg/a/a/a/a/a/c;

    iget-object v0, v0, Lorg/a/a/a/a/a/c;->a:[B

    iget-object v2, p0, Lorg/a/a/a/a/a/d;->c:Lorg/a/a/a/a/a/c;

    iget v2, v2, Lorg/a/a/a/a/a/c;->c:I

    aput-byte v1, v0, v2

    iget-object v0, p0, Lorg/a/a/a/a/a/d;->c:Lorg/a/a/a/a/a/c;

    iget v1, p0, Lorg/a/a/a/a/a/d;->a:I

    invoke-static {v0, v1}, Lorg/a/a/a/a/a/c;->b(Lorg/a/a/a/a/a/c;I)I

    move-result v0

    iput v0, p0, Lorg/a/a/a/a/a/d;->a:I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/a/a/a/a/a/d;->c:Lorg/a/a/a/a/a/c;

    iget-object v2, v2, Lorg/a/a/a/a/a/c;->a:[B

    array-length v2, v2

    if-lt v0, v2, :cond_3

    iget-object v2, p0, Lorg/a/a/a/a/a/d;->c:Lorg/a/a/a/a/a/c;

    iget-object v2, v2, Lorg/a/a/a/a/a/c;->a:[B

    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, Lorg/a/a/a/a/a/d;->c:Lorg/a/a/a/a/a/c;

    iget-object v3, v3, Lorg/a/a/a/a/a/c;->a:[B

    aget-byte v3, v3, v1

    aput-byte v3, v2, v0

    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lorg/a/a/a/a/a/d;->c:Lorg/a/a/a/a/a/c;

    iget-object v2, v2, Lorg/a/a/a/a/a/c;->a:[B

    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Lorg/a/a/a/a/a/d;->c:Lorg/a/a/a/a/a/c;

    iget-object v4, v4, Lorg/a/a/a/a/a/c;->a:[B

    aget-byte v4, v4, v0

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
