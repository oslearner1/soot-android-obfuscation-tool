.class Lorg/jboss/netty/channel/socket/nio/e;
.super Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;

# interfaces
.implements Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelConfig;


# static fields
.field private static final a:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private volatile b:I

.field private volatile c:I

.field private volatile d:I

.field private final e:Ljava/nio/channels/DatagramChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/channel/socket/nio/e;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/e;->a:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method constructor <init>(Ljava/nio/channels/DatagramChannel;)V
    .locals 1

    invoke-virtual {p1}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;-><init>(Ljava/net/DatagramSocket;)V

    const/high16 v0, 0x10000

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/e;->b:I

    const v0, 0x8000

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/e;->c:I

    const/16 v0, 0x10

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/e;->d:I

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/e;->e:Ljava/nio/channels/DatagramChannel;

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
    iput p1, p0, Lorg/jboss/netty/channel/socket/nio/e;->b:I

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
    iput p1, p0, Lorg/jboss/netty/channel/socket/nio/e;->c:I

    return-void
.end method


# virtual methods
.method public getInterface()Ljava/net/InetAddress;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/e;->getNetworkInterface()Ljava/net/NetworkInterface;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    goto :goto_0
.end method

.method public getNetworkInterface()Ljava/net/NetworkInterface;
    .locals 2

    invoke-static {}, Lorg/jboss/netty/util/internal/DetectionUtil;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/e;->e:Ljava/nio/channels/DatagramChannel;

    sget-object v1, Ljava/net/StandardSocketOptions;->IP_MULTICAST_IF:Ljava/net/SocketOption;

    invoke-virtual {v0, v1}, Ljava/nio/channels/DatagramChannel;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getTimeToLive()I
    .locals 2

    invoke-static {}, Lorg/jboss/netty/util/internal/DetectionUtil;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/e;->e:Ljava/nio/channels/DatagramChannel;

    sget-object v1, Ljava/net/StandardSocketOptions;->IP_MULTICAST_TTL:Ljava/net/SocketOption;

    invoke-virtual {v0, v1}, Ljava/nio/channels/DatagramChannel;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getWriteBufferHighWaterMark()I
    .locals 1

    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/e;->b:I

    return v0
.end method

.method public getWriteBufferLowWaterMark()I
    .locals 1

    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/e;->c:I

    return v0
.end method

.method public getWriteSpinCount()I
    .locals 1

    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/e;->d:I

    return v0
.end method

.method public isLoopbackModeDisabled()Z
    .locals 2

    invoke-static {}, Lorg/jboss/netty/util/internal/DetectionUtil;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/e;->e:Ljava/nio/channels/DatagramChannel;

    sget-object v1, Ljava/net/StandardSocketOptions;->IP_MULTICAST_LOOP:Ljava/net/SocketOption;

    invoke-virtual {v0, v1}, Ljava/nio/channels/DatagramChannel;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setInterface(Ljava/net/InetAddress;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/nio/e;->setNetworkInterface(Ljava/net/NetworkInterface;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setLoopbackModeDisabled(Z)V
    .locals 3

    invoke-static {}, Lorg/jboss/netty/util/internal/DetectionUtil;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/e;->e:Ljava/nio/channels/DatagramChannel;

    sget-object v1, Ljava/net/StandardSocketOptions;->IP_MULTICAST_LOOP:Ljava/net/SocketOption;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/DatagramChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setNetworkInterface(Ljava/net/NetworkInterface;)V
    .locals 2

    invoke-static {}, Lorg/jboss/netty/util/internal/DetectionUtil;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/e;->e:Ljava/nio/channels/DatagramChannel;

    sget-object v1, Ljava/net/StandardSocketOptions;->IP_MULTICAST_IF:Ljava/net/SocketOption;

    invoke-virtual {v0, v1, p1}, Ljava/nio/channels/DatagramChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->setOption(Ljava/lang/String;Ljava/lang/Object;)Z

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

    invoke-direct {p0, v1}, Lorg/jboss/netty/channel/socket/nio/e;->a(I)V

    goto :goto_0

    :cond_1
    const-string v1, "writeBufferLowWaterMark"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/jboss/netty/channel/socket/nio/e;->b(I)V

    goto :goto_0

    :cond_2
    const-string v1, "writeSpinCount"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/socket/nio/e;->setWriteSpinCount(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOptions(Ljava/util/Map;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;->setOptions(Ljava/util/Map;)V

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/e;->getWriteBufferHighWaterMark()I

    move-result v0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/e;->getWriteBufferLowWaterMark()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/e;->getWriteBufferHighWaterMark()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/socket/nio/e;->b(I)V

    sget-object v0, Lorg/jboss/netty/channel/socket/nio/e;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/jboss/netty/channel/socket/nio/e;->a:Lorg/jboss/netty/logging/InternalLogger;

    const-string v1, "writeBufferLowWaterMark cannot be greater than writeBufferHighWaterMark; setting to the half of the writeBufferHighWaterMark."

    invoke-interface {v0, v1}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setTimeToLive(I)V
    .locals 3

    invoke-static {}, Lorg/jboss/netty/util/internal/DetectionUtil;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/e;->e:Ljava/nio/channels/DatagramChannel;

    sget-object v1, Ljava/net/StandardSocketOptions;->IP_MULTICAST_TTL:Ljava/net/SocketOption;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/DatagramChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setWriteBufferHighWaterMark(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/e;->getWriteBufferLowWaterMark()I

    move-result v0

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "writeBufferHighWaterMark cannot be less than writeBufferLowWaterMark ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/e;->getWriteBufferLowWaterMark()I

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
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/e;->a(I)V

    return-void
.end method

.method public setWriteBufferLowWaterMark(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/e;->getWriteBufferHighWaterMark()I

    move-result v0

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "writeBufferLowWaterMark cannot be greater than writeBufferHighWaterMark ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/e;->getWriteBufferHighWaterMark()I

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
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/e;->b(I)V

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
    iput p1, p0, Lorg/jboss/netty/channel/socket/nio/e;->d:I

    return-void
.end method
