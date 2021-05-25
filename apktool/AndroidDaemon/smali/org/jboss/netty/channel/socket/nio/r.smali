.class final Lorg/jboss/netty/channel/socket/nio/r;
.super Ljava/lang/Object;


# static fields
.field static final a:Lorg/jboss/netty/logging/InternalLogger;

.field static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v2, -0x1

    const/4 v1, 0x2

    const-class v0, Lorg/jboss/netty/channel/socket/nio/r;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    const-string v0, "org.jboss.netty.channel.socket.nio.constraintLevel"

    invoke-static {v0, v2}, Lorg/jboss/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_0

    if-le v0, v1, :cond_2

    :cond_0
    const-string v0, "java.nio.channels.spi.constraintLevel"

    invoke-static {v0, v2}, Lorg/jboss/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_1

    if-le v0, v1, :cond_6

    :cond_1
    move v0, v2

    :cond_2
    :goto_0
    if-ltz v0, :cond_3

    sget-object v2, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Setting the NIO constraint level to: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;)V

    :cond_3
    if-gez v0, :cond_4

    invoke-static {}, Lorg/jboss/netty/channel/socket/nio/r;->a()I

    move-result v0

    if-gez v0, :cond_7

    sget-object v0, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    const-string v2, "Couldn\'t determine the NIO constraint level from the system properties; using the safest level (2)"

    invoke-interface {v0, v2}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;)V

    move v0, v1

    :cond_4
    :goto_1
    sput v0, Lorg/jboss/netty/channel/socket/nio/r;->b:I

    if-ltz v0, :cond_5

    sget v0, Lorg/jboss/netty/channel/socket/nio/r;->b:I

    if-le v0, v1, :cond_9

    :cond_5
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected NIO constraint level: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lorg/jboss/netty/channel/socket/nio/r;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", please report this error."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    sget-object v2, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    const-string v3, "System property \'java.nio.channels.spi.constraintLevel\' has been deprecated.  Use \'org.jboss.netty.channel.socket.nio.constraintLevel\' instead."

    invoke-interface {v2, v3}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    if-eqz v0, :cond_8

    sget-object v2, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v2}, Lorg/jboss/netty/logging/InternalLogger;->isInfoEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Using the autodetected NIO constraint level: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (Use better NIO provider for better performance)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/jboss/netty/logging/InternalLogger;->info(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    sget-object v2, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v2}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Using the autodetected NIO constraint level: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    return-void

    :cond_a
    move v0, v1

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()I
    .locals 9

    const/4 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v3, "java.specification.version"

    invoke-static {v3}, Lorg/jboss/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "java.vm.info"

    const-string v5, ""

    invoke-static {v3, v5}, Lorg/jboss/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "os.name"

    invoke-static {v3}, Lorg/jboss/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "java.vm.vendor"

    invoke-static {v3}, Lorg/jboss/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :try_start_0
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    if-eqz v4, :cond_0

    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    if-nez v3, :cond_2

    :cond_0
    move v0, v2

    :cond_1
    :goto_1
    return v0

    :catch_0
    move-exception v3

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "sun"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_7

    const-string v1, "linux"

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_4

    const-string v1, "sun.nio.ch.EPollSelectorProvider"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "sun.nio.ch.PollSelectorProvider"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    const-string v1, "windows"

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_5

    const-string v1, "sun.nio.ch.WindowsSelectorProvider"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_5
    const-string v1, "sun"

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_6

    const-string v1, "solaris"

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    :cond_6
    const-string v1, "sun.nio.ch.DevPollSelectorProvider"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_7
    const-string v8, "apple"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_8

    const-string v1, "mac"

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    const-string v1, "os"

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    const-string v1, "sun.nio.ch.KQueueSelectorProvider"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_8
    const-string v8, "ibm"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_e

    const-string v7, "linux"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_9

    const-string v7, "aix"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_3

    :cond_9
    const-string v6, "1.5"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "^1\\.5\\D.*$"

    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_a
    const-string v0, "sun.nio.ch.PollSelectorProvider"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto/16 :goto_1

    :cond_b
    const-string v6, "1.6"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "^1\\.6\\D.*$"

    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_c
    const-string v4, "(?:^|[^0-9])([2-9][0-9]{3}(?:0[1-9]|1[0-2])(?:0[1-9]|[12][0-9]|3[01]))(?:$|[^0-9])"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/32 v6, 0x13269d1

    cmp-long v4, v4, v6

    if-gez v4, :cond_d

    const/4 v0, 0x2

    goto/16 :goto_1

    :cond_d
    const-string v4, "sun.nio.ch.EPollSelectorProvider"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v0, "sun.nio.ch.PollSelectorProvider"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto/16 :goto_1

    :cond_e
    const-string v4, "bea"

    invoke-virtual {v7, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_f

    const-string v4, "oracle"

    invoke-virtual {v7, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_11

    :cond_f
    const-string v1, "linux"

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_10

    const-string v1, "sun.nio.ch.EPollSelectorProvider"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "sun.nio.ch.PollSelectorProvider"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_1

    :cond_10
    const-string v1, "windows"

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    const-string v1, "sun.nio.ch.WindowsSelectorProvider"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_1

    :cond_11
    const-string v0, "apache"

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    const-string v0, "org.apache.harmony.nio.internal.SelectorProviderImpl"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto/16 :goto_1
.end method

.method private static b()I
    .locals 13

    const/16 v12, 0xa

    const/4 v0, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_24
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v4

    :try_start_1
    invoke-virtual {v4}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v1

    new-instance v2, Ljava/net/InetSocketAddress;

    const/4 v8, 0x0

    invoke-direct {v2, v8}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    new-instance v2, Lorg/jboss/netty/channel/socket/nio/s;

    invoke-direct {v2}, Lorg/jboss/netty/channel/socket/nio/s;-><init>()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget-object v1, v2, Lorg/jboss/netty/channel/socket/nio/s;->a:Ljava/nio/channels/Selector;

    const/4 v3, 0x0

    invoke-virtual {v4, v1, v3}, Ljava/nio/channels/ServerSocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v1, v2, Lorg/jboss/netty/channel/socket/nio/s;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v4, v1}, Ljava/nio/channels/ServerSocketChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v3

    invoke-interface {v7, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    move v1, v5

    :goto_0
    if-ge v1, v12, :cond_1a

    :cond_0
    :goto_1
    iget-boolean v8, v2, Lorg/jboss/netty/channel/socket/nio/s;->c:Z

    if-nez v8, :cond_d

    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v1, v2

    move-object v2, v4

    :goto_2
    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_a

    :cond_1
    :goto_3
    if-eqz v1, :cond_3

    iput-boolean v6, v1, Lorg/jboss/netty/channel/socket/nio/s;->b:Z

    :try_start_6
    invoke-interface {v7}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_b

    :cond_2
    :goto_4
    :try_start_7
    iget-object v2, v1, Lorg/jboss/netty/channel/socket/nio/s;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_23

    const-wide/16 v2, 0x1

    :try_start_8
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_22
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_23

    move-result v2

    if-eqz v2, :cond_2

    :goto_5
    :try_start_9
    iget-object v1, v1, Lorg/jboss/netty/channel/socket/nio/s;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_c

    :cond_3
    :goto_6
    return v0

    :catch_1
    move-exception v1

    :try_start_a
    sget-object v2, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v2}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    const-string v5, "Failed to configure a temporary socket."

    invoke-interface {v2, v5, v1}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_25
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :cond_4
    if-eqz v4, :cond_5

    :try_start_b
    invoke-virtual {v4}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_10

    :cond_5
    :goto_7
    if-eqz v3, :cond_3

    iput-boolean v6, v3, Lorg/jboss/netty/channel/socket/nio/s;->b:Z

    :try_start_c
    invoke-interface {v7}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_11

    :cond_6
    :goto_8
    :try_start_d
    iget-object v1, v3, Lorg/jboss/netty/channel/socket/nio/s;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1f

    const-wide/16 v1, 0x1

    :try_start_e
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v1, v2, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_1e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1f

    move-result v1

    if-eqz v1, :cond_6

    :goto_9
    :try_start_f
    iget-object v1, v3, Lorg/jboss/netty/channel/socket/nio/s;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_6

    :catch_2
    move-exception v1

    sget-object v2, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v2}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    const-string v3, "Failed to close a temporary selector."

    :goto_a
    invoke-interface {v2, v3, v1}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_3
    move-exception v1

    :try_start_10
    sget-object v2, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v2}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    const-string v5, "Failed to open a temporary selector."

    invoke-interface {v2, v5, v1}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_25
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :cond_7
    if-eqz v4, :cond_8

    :try_start_11
    invoke-virtual {v4}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_12

    :cond_8
    :goto_b
    if-eqz v3, :cond_3

    iput-boolean v6, v3, Lorg/jboss/netty/channel/socket/nio/s;->b:Z

    :try_start_12
    invoke-interface {v7}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_13

    :cond_9
    :goto_c
    :try_start_13
    iget-object v1, v3, Lorg/jboss/netty/channel/socket/nio/s;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_1d

    const-wide/16 v1, 0x1

    :try_start_14
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v1, v2, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_14} :catch_1c
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_1d

    move-result v1

    if-eqz v1, :cond_9

    :goto_d
    :try_start_15
    iget-object v1, v3, Lorg/jboss/netty/channel/socket/nio/s;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_4

    goto :goto_6

    :catch_4
    move-exception v1

    sget-object v2, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v2}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    const-string v3, "Failed to close a temporary selector."

    goto :goto_a

    :catch_5
    move-exception v1

    :try_start_16
    sget-object v3, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v3}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    sget-object v3, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    const-string v5, "Failed to register a temporary selector."

    invoke-interface {v3, v5, v1}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    :cond_a
    if-eqz v4, :cond_b

    :try_start_17
    invoke-virtual {v4}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_14

    :cond_b
    :goto_e
    if-eqz v2, :cond_3

    iput-boolean v6, v2, Lorg/jboss/netty/channel/socket/nio/s;->b:Z

    :try_start_18
    invoke-interface {v7}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_18} :catch_15

    :cond_c
    :goto_f
    :try_start_19
    iget-object v1, v2, Lorg/jboss/netty/channel/socket/nio/s;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_1b

    const-wide/16 v3, 0x1

    :try_start_1a
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v3, v4, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1a} :catch_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_1b

    move-result v1

    if-eqz v1, :cond_c

    :goto_10
    :try_start_1b
    iget-object v1, v2, Lorg/jboss/netty/channel/socket/nio/s;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_6

    goto/16 :goto_6

    :catch_6
    move-exception v1

    sget-object v2, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v2}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    const-string v3, "Failed to close a temporary selector."

    goto/16 :goto_a

    :cond_d
    const-wide/16 v8, 0x32

    :try_start_1c
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_1c} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_0
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    :goto_11
    :try_start_1d
    iget-boolean v8, v2, Lorg/jboss/netty/channel/socket/nio/s;->c:Z

    if-eqz v8, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v10

    or-int/lit8 v10, v10, 0x10

    invoke-virtual {v3, v10}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v10

    and-int/lit8 v10, v10, -0x11

    invoke-virtual {v3, v10}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_0
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    move-result-wide v10

    sub-long v8, v10, v8

    const-wide/32 v10, 0x1dcd6500

    cmp-long v8, v8, v10

    if-ltz v8, :cond_10

    move v1, v5

    :goto_12
    if-eqz v1, :cond_11

    move v0, v5

    :goto_13
    if-eqz v4, :cond_e

    :try_start_1e
    invoke-virtual {v4}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_16

    :cond_e
    :goto_14
    if-eqz v2, :cond_3

    iput-boolean v6, v2, Lorg/jboss/netty/channel/socket/nio/s;->b:Z

    :try_start_1f
    invoke-interface {v7}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_1f
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_1f} :catch_17

    :cond_f
    :goto_15
    :try_start_20
    iget-object v1, v2, Lorg/jboss/netty/channel/socket/nio/s;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_19

    const-wide/16 v3, 0x1

    :try_start_21
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v3, v4, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_21} :catch_18
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_19

    move-result v1

    if-eqz v1, :cond_f

    :goto_16
    :try_start_22
    iget-object v1, v2, Lorg/jboss/netty/channel/socket/nio/s;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_7

    goto/16 :goto_6

    :catch_7
    move-exception v1

    sget-object v2, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v2}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    const-string v3, "Failed to close a temporary selector."

    goto/16 :goto_a

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_11
    move v1, v5

    :goto_17
    if-ge v1, v12, :cond_19

    :cond_12
    :goto_18
    :try_start_23
    iget-boolean v8, v2, Lorg/jboss/netty/channel/socket/nio/s;->c:Z

    if-nez v8, :cond_16

    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_0
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    goto :goto_18

    :catchall_0
    move-exception v0

    :goto_19
    if-eqz v4, :cond_13

    :try_start_24
    invoke-virtual {v4}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_d

    :cond_13
    :goto_1a
    if-eqz v2, :cond_15

    iput-boolean v6, v2, Lorg/jboss/netty/channel/socket/nio/s;->b:Z

    :try_start_25
    invoke-interface {v7}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_25
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_25} :catch_e

    :cond_14
    :goto_1b
    :try_start_26
    iget-object v1, v2, Lorg/jboss/netty/channel/socket/nio/s;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_21

    const-wide/16 v3, 0x1

    :try_start_27
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v3, v4, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_27} :catch_20
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_21

    move-result v1

    if-eqz v1, :cond_14

    :goto_1c
    :try_start_28
    iget-object v1, v2, Lorg/jboss/netty/channel/socket/nio/s;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_f

    :cond_15
    :goto_1d
    throw v0

    :cond_16
    const-wide/16 v8, 0x32

    :try_start_29
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_29} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_0
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    :goto_1e
    :try_start_2a
    iget-boolean v8, v2, Lorg/jboss/netty/channel/socket/nio/s;->c:Z

    if-eqz v8, :cond_12

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v10

    monitor-enter v2
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_0
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    :try_start_2b
    iget-object v11, v2, Lorg/jboss/netty/channel/socket/nio/s;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v11}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    or-int/lit8 v11, v10, 0x10

    invoke-virtual {v3, v11}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    and-int/lit8 v10, v10, -0x11

    invoke-virtual {v3, v10}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1

    :try_start_2c
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long v8, v10, v8

    const-wide/32 v10, 0x1dcd6500

    cmp-long v8, v8, v10

    if-ltz v8, :cond_17

    :goto_1f
    if-eqz v5, :cond_18

    move v0, v6

    goto/16 :goto_13

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_0
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_18
    const/4 v0, 0x2

    goto/16 :goto_13

    :catch_8
    move-exception v8

    goto/16 :goto_11

    :catch_9
    move-exception v8

    goto :goto_1e

    :catch_a
    move-exception v2

    sget-object v3, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v3}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    const-string v4, "Failed to close a temporary socket."

    invoke-interface {v3, v4, v2}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :catch_b
    move-exception v2

    goto/16 :goto_4

    :catch_c
    move-exception v1

    sget-object v2, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v2}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    const-string v3, "Failed to close a temporary selector."

    goto/16 :goto_a

    :catch_d
    move-exception v1

    sget-object v3, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v3}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_13

    sget-object v3, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    const-string v4, "Failed to close a temporary socket."

    invoke-interface {v3, v4, v1}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    :catch_e
    move-exception v1

    goto/16 :goto_1b

    :catch_f
    move-exception v1

    sget-object v2, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v2}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_15

    sget-object v2, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    const-string v3, "Failed to close a temporary selector."

    invoke-interface {v2, v3, v1}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    :catch_10
    move-exception v1

    sget-object v2, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v2}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    const-string v4, "Failed to close a temporary socket."

    invoke-interface {v2, v4, v1}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :catch_11
    move-exception v1

    goto/16 :goto_8

    :catch_12
    move-exception v1

    sget-object v2, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v2}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    const-string v4, "Failed to close a temporary socket."

    invoke-interface {v2, v4, v1}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    :catch_13
    move-exception v1

    goto/16 :goto_c

    :catch_14
    move-exception v1

    sget-object v3, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v3}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object v3, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    const-string v4, "Failed to close a temporary socket."

    invoke-interface {v3, v4, v1}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    :catch_15
    move-exception v1

    goto/16 :goto_f

    :catch_16
    move-exception v1

    sget-object v3, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v3}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_e

    sget-object v3, Lorg/jboss/netty/channel/socket/nio/r;->a:Lorg/jboss/netty/logging/InternalLogger;

    const-string v4, "Failed to close a temporary socket."

    invoke-interface {v3, v4, v1}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    :catch_17
    move-exception v1

    goto/16 :goto_15

    :catch_18
    move-exception v1

    goto/16 :goto_15

    :catch_19
    move-exception v1

    goto/16 :goto_16

    :catch_1a
    move-exception v1

    goto/16 :goto_f

    :catch_1b
    move-exception v1

    goto/16 :goto_10

    :catch_1c
    move-exception v1

    goto/16 :goto_c

    :catch_1d
    move-exception v1

    goto/16 :goto_d

    :catch_1e
    move-exception v1

    goto/16 :goto_8

    :catch_1f
    move-exception v1

    goto/16 :goto_9

    :catch_20
    move-exception v1

    goto/16 :goto_1b

    :catch_21
    move-exception v1

    goto/16 :goto_1c

    :catch_22
    move-exception v2

    goto/16 :goto_4

    :catch_23
    move-exception v2

    goto/16 :goto_5

    :catchall_2
    move-exception v0

    move-object v2, v3

    move-object v4, v1

    goto/16 :goto_19

    :catchall_3
    move-exception v0

    move-object v2, v3

    goto/16 :goto_19

    :catch_24
    move-exception v2

    move-object v2, v1

    move-object v1, v3

    goto/16 :goto_2

    :catch_25
    move-exception v1

    move-object v1, v3

    move-object v2, v4

    goto/16 :goto_2

    :cond_19
    move v5, v6

    goto/16 :goto_1f

    :cond_1a
    move v1, v6

    goto/16 :goto_12
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Hard-coded Constraint Level: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lorg/jboss/netty/channel/socket/nio/r;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Auto-detected Constraint Level: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/jboss/netty/channel/socket/nio/r;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
