.class Lorg/jboss/netty/channel/socket/nio/y;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/nio/ByteBuffer;

.field private b:I

.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>()V
    .locals 2

    const/16 v0, 0x10

    const/16 v1, 0x50

    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/channel/socket/nio/y;-><init>(II)V

    return-void
.end method

.method constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/y;->c:I

    const/16 v0, 0x50

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/y;->d:I

    return-void
.end method

.method private b(I)Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/y;->a:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/y;->b:I

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/y;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/jboss/netty/util/internal/ByteBufferUtil;->destroy(Ljava/nio/ByteBuffer;)V

    :cond_0
    ushr-int/lit8 v0, p1, 0xa

    and-int/lit16 v1, p1, 0x3ff

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    shl-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/y;->a:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/y;->a:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public static convert(Lorg/jboss/netty/channel/socket/InternetProtocolFamily;)Ljava/net/ProtocolFamily;
    .locals 2

    sget-object v0, Lorg/jboss/netty/channel/socket/nio/z;->a:[I

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/InternetProtocolFamily;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method a(I)Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/y;->a:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/y;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/y;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_1

    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/y;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/y;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    iget v1, p0, Lorg/jboss/netty/channel/socket/nio/y;->d:I

    mul-int/2addr v0, v1

    if-le v0, p1, :cond_3

    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/y;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/y;->b:I

    iget v1, p0, Lorg/jboss/netty/channel/socket/nio/y;->c:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/y;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/y;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/y;->a:Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/y;->b:I

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/y;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_1
.end method
