.class Lorg/jboss/netty/channel/socket/nio/f;
.super Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;

# interfaces
.implements Lorg/jboss/netty/channel/socket/nio/NioSocketChannelConfig;


# static fields
.field private static final a:Lorg/jboss/netty/logging/InternalLogger;

.field private static final b:Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;


# instance fields
.field private volatile c:I

.field private volatile d:I

.field private volatile e:Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;

.field private volatile f:Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;

.field private volatile g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/channel/socket/nio/f;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/f;->a:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictorFactory;

    invoke-direct {v0}, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictorFactory;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/f;->b:Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;

    return-void
.end method

.method constructor <init>(Ljava/net/Socket;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;-><init>(Ljava/net/Socket;)V

    const/high16 v0, 0x10000

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/f;->c:I

    const v0, 0x8000

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/f;->d:I

    sget-object v0, Lorg/jboss/netty/channel/socket/nio/f;->b:Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/f;->f:Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;

    const/16 v0, 0x10

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/f;->g:I

    return-void
.end method

.method private a(I)V
    .locals 3

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "writeBufferHighWaterMark: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lorg/jboss/netty/channel/socket/nio/f;->c:I

    return-void
.end method

.method private b(I)V
    .locals 3

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "writeBufferLowWaterMark: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lorg/jboss/netty/channel/socket/nio/f;->d:I

    return-void
.end method


# virtual methods
.method public getReceiveBufferSizePredictor()Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;
    .locals 4

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/f;->e:Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/f;->getReceiveBufferSizePredictorFactory()Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;->getPredictor()Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/f;->e:Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to create a new "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getReceiveBufferSizePredictorFactory()Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/f;->f:Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;

    return-object v0
.end method

.method public getWriteBufferHighWaterMark()I
    .locals 1

    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/f;->c:I

    return v0
.end method

.method public getWriteBufferLowWaterMark()I
    .locals 1

    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/f;->d:I

    return v0
.end method

.method public getWriteSpinCount()I
    .locals 1

    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/f;->g:I

    return v0
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->setOption(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v1, "writeBufferHighWaterMark"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/jboss/netty/channel/socket/nio/f;->a(I)V

    goto :goto_0

    :cond_1
    const-string v1, "writeBufferLowWaterMark"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/jboss/netty/channel/socket/nio/f;->b(I)V

    goto :goto_0

    :cond_2
    const-string v1, "writeSpinCount"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/socket/nio/f;->setWriteSpinCount(I)V

    goto :goto_0

    :cond_3
    const-string v1, "receiveBufferSizePredictorFactory"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    check-cast p2, Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;

    invoke-virtual {p0, p2}, Lorg/jboss/netty/channel/socket/nio/f;->setReceiveBufferSizePredictorFactory(Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;)V

    goto :goto_0

    :cond_4
    const-string v1, "receiveBufferSizePredictor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    check-cast p2, Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;

    invoke-virtual {p0, p2}, Lorg/jboss/netty/channel/socket/nio/f;->setReceiveBufferSizePredictor(Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOptions(Ljava/util/Map;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/jboss/netty/channel/socket/DefaultSocketChannelConfig;->setOptions(Ljava/util/Map;)V

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/f;->getWriteBufferHighWaterMark()I

    move-result v0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/f;->getWriteBufferLowWaterMark()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/f;->getWriteBufferHighWaterMark()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/socket/nio/f;->b(I)V

    sget-object v0, Lorg/jboss/netty/channel/socket/nio/f;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/jboss/netty/channel/socket/nio/f;->a:Lorg/jboss/netty/logging/InternalLogger;

    const-string v1, "writeBufferLowWaterMark cannot be greater than writeBufferHighWaterMark; setting to the half of the writeBufferHighWaterMark."

    invoke-interface {v0, v1}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setReceiveBufferSizePredictor(Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "predictor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/f;->e:Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;

    return-void
.end method

.method public setReceiveBufferSizePredictorFactory(Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "predictorFactory"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/f;->f:Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;

    return-void
.end method

.method public setWriteBufferHighWaterMark(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/f;->getWriteBufferLowWaterMark()I

    move-result v0

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "writeBufferHighWaterMark cannot be less than writeBufferLowWaterMark ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/f;->getWriteBufferLowWaterMark()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/f;->a(I)V

    return-void
.end method

.method public setWriteBufferLowWaterMark(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/f;->getWriteBufferHighWaterMark()I

    move-result v0

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "writeBufferLowWaterMark cannot be greater than writeBufferHighWaterMark ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/f;->getWriteBufferHighWaterMark()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/f;->b(I)V

    return-void
.end method

.method public setWriteSpinCount(I)V
    .locals 2

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "writeSpinCount must be a positive integer."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lorg/jboss/netty/channel/socket/nio/f;->g:I

    return-void
.end method
