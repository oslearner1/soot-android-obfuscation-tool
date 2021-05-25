.class final Lorg/jboss/netty/handler/codec/marshalling/c;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/marshalling/ByteInput;


# static fields
.field private static final a:Lorg/jboss/netty/handler/codec/marshalling/d;


# instance fields
.field private final b:Lorg/jboss/marshalling/ByteInput;

.field private final c:J

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/marshalling/d;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/marshalling/d;-><init>()V

    sput-object v0, Lorg/jboss/netty/handler/codec/marshalling/c;->a:Lorg/jboss/netty/handler/codec/marshalling/d;

    return-void
.end method

.method public constructor <init>(Lorg/jboss/marshalling/ByteInput;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The limit MUST be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/marshalling/c;->b:Lorg/jboss/marshalling/ByteInput;

    iput-wide p2, p0, Lorg/jboss/netty/handler/codec/marshalling/c;->c:J

    return-void
.end method

.method private a(I)I
    .locals 6

    int-to-long v0, p1

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/marshalling/c;->c:J

    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/marshalling/c;->d:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public final available()I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/marshalling/c;->b:Lorg/jboss/marshalling/ByteInput;

    invoke-interface {v0}, Lorg/jboss/marshalling/ByteInput;->available()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/marshalling/c;->a(I)I

    move-result v0

    return v0
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final read()I
    .locals 5

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/marshalling/c;->a(I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/marshalling/c;->b:Lorg/jboss/marshalling/ByteInput;

    invoke-interface {v0}, Lorg/jboss/marshalling/ByteInput;->read()I

    move-result v0

    iget-wide v1, p0, Lorg/jboss/netty/handler/codec/marshalling/c;->d:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/jboss/netty/handler/codec/marshalling/c;->d:J

    return v0

    :cond_0
    sget-object v0, Lorg/jboss/netty/handler/codec/marshalling/c;->a:Lorg/jboss/netty/handler/codec/marshalling/d;

    throw v0
.end method

.method public final read([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/jboss/netty/handler/codec/marshalling/c;->read([BII)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 5

    invoke-direct {p0, p3}, Lorg/jboss/netty/handler/codec/marshalling/c;->a(I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/marshalling/c;->b:Lorg/jboss/marshalling/ByteInput;

    invoke-interface {v1, p1, p2, v0}, Lorg/jboss/marshalling/ByteInput;->read([BII)I

    move-result v0

    iget-wide v1, p0, Lorg/jboss/netty/handler/codec/marshalling/c;->d:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/jboss/netty/handler/codec/marshalling/c;->d:J

    return v0

    :cond_0
    sget-object v0, Lorg/jboss/netty/handler/codec/marshalling/c;->a:Lorg/jboss/netty/handler/codec/marshalling/d;

    throw v0
.end method

.method public final skip(J)J
    .locals 4

    long-to-int v0, p1

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/marshalling/c;->a(I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/marshalling/c;->b:Lorg/jboss/marshalling/ByteInput;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lorg/jboss/marshalling/ByteInput;->skip(J)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/marshalling/c;->d:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/jboss/netty/handler/codec/marshalling/c;->d:J

    return-wide v0

    :cond_0
    sget-object v0, Lorg/jboss/netty/handler/codec/marshalling/c;->a:Lorg/jboss/netty/handler/codec/marshalling/d;

    throw v0
.end method
