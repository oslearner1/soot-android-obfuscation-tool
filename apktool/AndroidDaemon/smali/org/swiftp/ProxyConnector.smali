.class public final Lorg/swiftp/ProxyConnector;
.super Ljava/lang/Thread;


# instance fields
.field private a:Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;

.field private b:Lorg/swiftp/af;

.field private c:Lorg/json/JSONObject;

.field private d:Ljava/lang/Thread;

.field private e:Ljava/net/Socket;

.field private f:Ljava/lang/String;

.field private g:Ljava/io/InputStream;

.field private h:J

.field private i:Lorg/swiftp/ProxyConnector$State;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;)V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Lorg/swiftp/af;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/swiftp/af;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    iput-object v2, p0, Lorg/swiftp/ProxyConnector;->c:Lorg/json/JSONObject;

    iput-object v2, p0, Lorg/swiftp/ProxyConnector;->d:Ljava/lang/Thread;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lorg/swiftp/ProxyConnector;->e:Ljava/net/Socket;

    iput-object v2, p0, Lorg/swiftp/ProxyConnector;->f:Ljava/lang/String;

    iput-object v2, p0, Lorg/swiftp/ProxyConnector;->g:Ljava/io/InputStream;

    iput-wide v3, p0, Lorg/swiftp/ProxyConnector;->h:J

    sget-object v0, Lorg/swiftp/ProxyConnector$State;->DISCONNECTED:Lorg/swiftp/ProxyConnector$State;

    iput-object v0, p0, Lorg/swiftp/ProxyConnector;->i:Lorg/swiftp/ProxyConnector$State;

    iput-object v2, p0, Lorg/swiftp/ProxyConnector;->k:Ljava/lang/String;

    iput-object p1, p0, Lorg/swiftp/ProxyConnector;->a:Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;

    invoke-static {}, Lorg/swiftp/ae;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "proxy_usage_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "proxy_usage_data"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/swiftp/ProxyConnector;->h:J

    sget-object v0, Lorg/swiftp/ProxyConnector$State;->DISCONNECTED:Lorg/swiftp/ProxyConnector$State;

    invoke-direct {p0, v0}, Lorg/swiftp/ProxyConnector;->a(Lorg/swiftp/ProxyConnector$State;)V

    invoke-static {p0}, Lorg/swiftp/ae;->setProxyConnector(Lorg/swiftp/ProxyConnector;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const-string v2, "newAuthedSocket can\'t connect to null host"

    invoke-virtual {v1, v2}, Lorg/swiftp/af;->i(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Opening proxy connection to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/swiftp/af;->d(Ljava/lang/String;)V

    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x1388

    invoke-virtual {v1, v3, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    const-string v3, "android_id"

    invoke-static {}, Lorg/swiftp/ak;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "swiftp_version"

    invoke-static {}, Lorg/swiftp/ak;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "action"

    const-string v4, "login"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "UTF-8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    iget-object v2, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const/4 v3, 0x3

    const-string v5, "Sent login request"

    invoke-virtual {v2, v3, v5}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    const/16 v2, 0x800

    new-array v2, v2, [B

    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const/4 v2, 0x4

    const-string v3, "Proxy socket closed while waiting for auth response"

    invoke-virtual {v1, v2, v3}, Lorg/swiftp/af;->l(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception during proxy connection or authentication: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/swiftp/af;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    if-nez v3, :cond_3

    :try_start_1
    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const/4 v2, 0x4

    const-string v3, "Short network read waiting for auth, quitting"

    invoke-virtual {v1, v2, v3}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    new-instance v4, Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "UTF-8"

    invoke-direct {v5, v2, v6, v3, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lorg/swiftp/ProxyConnector;->a(Lorg/json/JSONObject;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const-string v3, "newAuthedSocket successful"

    invoke-virtual {v2, v3}, Lorg/swiftp/af;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto/16 :goto_0
.end method

.method private a()V
    .locals 4

    iget-wide v0, p0, Lorg/swiftp/ProxyConnector;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lorg/swiftp/ae;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "proxy_usage_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "proxy_usage_data"

    iget-wide v2, p0, Lorg/swiftp/ProxyConnector;->h:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const-string v1, "Persisted proxy usage to preferences"

    invoke-virtual {v0, v1}, Lorg/swiftp/af;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lorg/swiftp/ae;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "preferred_server"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preferred_server"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private a(Lorg/swiftp/ProxyConnector$State;)V
    .locals 4

    iput-object p1, p0, Lorg/swiftp/ProxyConnector;->i:Lorg/swiftp/ProxyConnector$State;

    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Proxy state changed to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/swiftp/af;->l(ILjava/lang/String;Z)V

    invoke-static {}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->updateClients()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)Z
    .locals 3

    const-string v0, "error_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error in JSON response, code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "error_code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "error_string"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "error_string"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const/4 v2, 0x4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "action"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static stateToString(Lorg/swiftp/ProxyConnector$State;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method final a(J)V
    .locals 6

    const-wide/32 v4, 0x4c4b40

    iget-wide v0, p0, Lorg/swiftp/ProxyConnector;->h:J

    iget-wide v2, p0, Lorg/swiftp/ProxyConnector;->h:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lorg/swiftp/ProxyConnector;->h:J

    iget-wide v2, p0, Lorg/swiftp/ProxyConnector;->h:J

    rem-long/2addr v2, v4

    rem-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    invoke-static {}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->updateClients()V

    invoke-direct {p0}, Lorg/swiftp/ProxyConnector;->a()V

    :cond_0
    return-void
.end method

.method public final dataPortConnect(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const-string v2, "Sending data_port_connect to proxy"

    invoke-virtual {v1, v2}, Lorg/swiftp/af;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->f:Ljava/lang/String;

    const/16 v2, 0x8ae

    invoke-direct {p0, v1, v2}, Lorg/swiftp/ProxyConnector;->a(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const-string v2, "dataPortConnect got null socket"

    invoke-virtual {v1, v2}, Lorg/swiftp/af;->i(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v2, "data_port_connect"

    invoke-static {v2}, Lorg/swiftp/ProxyConnector;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "address"

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "port"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p0, v1, v2}, Lorg/swiftp/ProxyConnector;->sendRequest(Ljava/net/Socket;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const-string v2, "JSONException in dataPortConnect"

    invoke-virtual {v1, v2}, Lorg/swiftp/af;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getProxyIp()Ljava/net/InetAddress;
    .locals 1

    invoke-virtual {p0}, Lorg/swiftp/ProxyConnector;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getProxyMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final getProxyState()Lorg/swiftp/ProxyConnector$State;
    .locals 1

    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->i:Lorg/swiftp/ProxyConnector$State;

    return-object v0
.end method

.method public final getProxyUsage()J
    .locals 2

    iget-wide v0, p0, Lorg/swiftp/ProxyConnector;->h:J

    return-wide v0
.end method

.method public final getURL()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->i:Lorg/swiftp/ProxyConnector$State;

    sget-object v1, Lorg/swiftp/ProxyConnector$State;->CONNECTED:Lorg/swiftp/ProxyConnector$State;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lorg/swiftp/ae;->getUsername()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ftp://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/swiftp/ProxyConnector;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final pasvAccept(Ljava/net/Socket;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "data_pasv_accept"

    invoke-static {v1}, Lorg/swiftp/ProxyConnector;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/swiftp/ProxyConnector;->sendRequest(Ljava/net/Socket;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v1}, Lorg/swiftp/ProxyConnector;->a(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const-string v2, "Error response to data_pasv_accept"

    invoke-virtual {v1, v2}, Lorg/swiftp/af;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JSONException in pasvAccept: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/swiftp/af;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const-string v2, "Proxy data_pasv_accept successful"

    invoke-virtual {v1, v2}, Lorg/swiftp/af;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final pasvListen()Lorg/swiftp/ah;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const-string v2, "Sending data_pasv_listen to proxy"

    invoke-virtual {v1, v2}, Lorg/swiftp/af;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->f:Ljava/lang/String;

    const/16 v2, 0x8ae

    invoke-direct {p0, v1, v2}, Lorg/swiftp/ProxyConnector;->a(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const-string v2, "pasvListen got null socket"

    invoke-virtual {v1, v2}, Lorg/swiftp/af;->i(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "data_pasv_listen"

    invoke-static {v1}, Lorg/swiftp/ProxyConnector;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lorg/swiftp/ProxyConnector;->sendRequest(Ljava/net/Socket;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "port"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    new-instance v1, Lorg/swiftp/ah;

    invoke-direct {v1, v2, v3}, Lorg/swiftp/ah;-><init>(Ljava/net/Socket;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const/4 v2, 0x4

    const-string v3, "JSONException in pasvListen"

    invoke-virtual {v1, v2, v3}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final quit()V
    .locals 2

    sget-object v0, Lorg/swiftp/ProxyConnector$State;->DISCONNECTED:Lorg/swiftp/ProxyConnector$State;

    invoke-direct {p0, v0}, Lorg/swiftp/ProxyConnector;->a(Lorg/swiftp/ProxyConnector$State;)V

    :try_start_0
    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->e:Ljava/net/Socket;

    const-string v1, "finished"

    invoke-static {v1}, Lorg/swiftp/ProxyConnector;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/swiftp/ProxyConnector;->sendRequest(Ljava/net/Socket;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->g:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const-string v1, "quit() closing proxy inputStream"

    invoke-virtual {v0, v1}, Lorg/swiftp/af;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->g:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :goto_0
    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->e:Ljava/net/Socket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const-string v1, "quit() closing proxy socket"

    invoke-virtual {v0, v1}, Lorg/swiftp/af;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    invoke-direct {p0}, Lorg/swiftp/ProxyConnector;->a()V

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/swiftp/ae;->setProxyConnector(Lorg/swiftp/ProxyConnector;)V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const-string v1, "quit() won\'t close null inputStream"

    invoke-virtual {v0, v1}, Lorg/swiftp/af;->d(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const-string v1, "quit() won\'t close null socket"

    invoke-virtual {v0, v1}, Lorg/swiftp/af;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final run()V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const-string v2, "In ProxyConnector.run()"

    invoke-virtual {v0, v2}, Lorg/swiftp/af;->i(Ljava/lang/String;)V

    sget-object v0, Lorg/swiftp/ProxyConnector$State;->CONNECTING:Lorg/swiftp/ProxyConnector$State;

    invoke-direct {p0, v0}, Lorg/swiftp/ProxyConnector;->a(Lorg/swiftp/ProxyConnector$State;)V

    :try_start_0
    invoke-static {}, Lorg/swiftp/ae;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "preferred_server"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "preferred_server"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "c1.swiftp.org"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-string v4, "c2.swiftp.org"

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const-string v4, "c3.swiftp.org"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string v4, "c4.swiftp.org"

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "c5.swiftp.org"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string v4, "c6.swiftp.org"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "c7.swiftp.org"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "c8.swiftp.org"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "c9.swiftp.org"

    aput-object v4, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-nez v2, :cond_0

    move-object v2, v0

    :goto_0
    array-length v3, v2

    move v0, v1

    :goto_1
    if-lt v0, v3, :cond_1

    :goto_2
    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->e:Ljava/net/Socket;

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const/4 v1, 0x4

    const-string v2, "No proxies accepted connection, failing."

    invoke-virtual {v0, v1, v2}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    sget-object v0, Lorg/swiftp/ProxyConnector$State;->UNREACHABLE:Lorg/swiftp/ProxyConnector$State;

    invoke-direct {p0, v0}, Lorg/swiftp/ProxyConnector;->a(Lorg/swiftp/ProxyConnector$State;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v6}, Lorg/swiftp/ae;->setProxyConnector(Lorg/swiftp/ProxyConnector;)V

    iput-object v6, p0, Lorg/swiftp/ProxyConnector;->f:Ljava/lang/String;

    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const-string v1, "ProxyConnector.run() returning"

    invoke-virtual {v0, v1}, Lorg/swiftp/af;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/swiftp/ProxyConnector;->a()V

    :goto_3
    return-void

    :cond_0
    const/4 v3, 0x1

    :try_start_1
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v3, v0}, Lorg/swiftp/ak;->concatStrArrays([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_1
    aget-object v1, v2, v0

    iput-object v1, p0, Lorg/swiftp/ProxyConnector;->f:Ljava/lang/String;

    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->f:Ljava/lang/String;

    const/16 v4, 0x8ae

    invoke-direct {p0, v1, v4}, Lorg/swiftp/ProxyConnector;->a(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lorg/swiftp/ProxyConnector;->e:Ljava/net/Socket;

    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->e:Ljava/net/Socket;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->e:Ljava/net/Socket;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    const-string v1, "start_command_session"

    invoke-static {v1}, Lorg/swiftp/ProxyConnector;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v4, p0, Lorg/swiftp/ProxyConnector;->e:Ljava/net/Socket;

    invoke-virtual {p0, v4, v1}, Lorg/swiftp/ProxyConnector;->sendRequest(Ljava/net/Socket;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lorg/swiftp/ProxyConnector;->c:Lorg/json/JSONObject;

    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->c:Lorg/json/JSONObject;

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const-string v4, "Couldn\'t create proxy command session"

    invoke-virtual {v1, v4}, Lorg/swiftp/af;->i(Ljava/lang/String;)V

    :cond_2
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->c:Lorg/json/JSONObject;

    const-string v4, "prefix"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const/4 v4, 0x4

    const-string v5, "start_command_session didn\'t receive a prefix in response"

    invoke-virtual {v1, v4, v5}, Lorg/swiftp/af;->l(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IOException in command session: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    sget-object v0, Lorg/swiftp/ProxyConnector$State;->FAILED:Lorg/swiftp/ProxyConnector$State;

    invoke-direct {p0, v0}, Lorg/swiftp/ProxyConnector;->a(Lorg/swiftp/ProxyConnector$State;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v6}, Lorg/swiftp/ae;->setProxyConnector(Lorg/swiftp/ProxyConnector;)V

    iput-object v6, p0, Lorg/swiftp/ProxyConnector;->f:Ljava/lang/String;

    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const-string v1, "ProxyConnector.run() returning"

    invoke-virtual {v0, v1}, Lorg/swiftp/af;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/swiftp/ProxyConnector;->a()V

    goto :goto_3

    :cond_4
    :try_start_3
    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->c:Lorg/json/JSONObject;

    const-string v1, "prefix"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/swiftp/ProxyConnector;->j:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/swiftp/ProxyConnector;->c:Lorg/json/JSONObject;

    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got prefix of: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/swiftp/ProxyConnector;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/swiftp/af;->l(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Commmand socket JSONException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    sget-object v0, Lorg/swiftp/ProxyConnector$State;->FAILED:Lorg/swiftp/ProxyConnector$State;

    invoke-direct {p0, v0}, Lorg/swiftp/ProxyConnector;->a(Lorg/swiftp/ProxyConnector$State;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v6}, Lorg/swiftp/ae;->setProxyConnector(Lorg/swiftp/ProxyConnector;)V

    iput-object v6, p0, Lorg/swiftp/ProxyConnector;->f:Ljava/lang/String;

    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const-string v1, "ProxyConnector.run() returning"

    invoke-virtual {v0, v1}, Lorg/swiftp/af;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/swiftp/ProxyConnector;->a()V

    goto/16 :goto_3

    :cond_5
    :try_start_5
    sget-object v0, Lorg/swiftp/ProxyConnector$State;->CONNECTED:Lorg/swiftp/ProxyConnector$State;

    invoke-direct {p0, v0}, Lorg/swiftp/ProxyConnector;->a(Lorg/swiftp/ProxyConnector$State;)V

    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->f:Ljava/lang/String;

    invoke-static {v0}, Lorg/swiftp/ProxyConnector;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/swiftp/ProxyConnector;->g:Ljava/io/InputStream;

    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    const/16 v0, 0x800

    new-array v0, v0, [B

    :goto_5
    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const-string v2, "to proxy read()"

    invoke-virtual {v1, v2}, Lorg/swiftp/af;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->g:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lorg/swiftp/ProxyConnector;->a(J)V

    iget-object v2, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const-string v3, "from proxy read()"

    invoke-virtual {v2, v3}, Lorg/swiftp/af;->d(Ljava/lang/String;)V

    if-lez v1, :cond_c

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "action"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v1

    if-eqz v1, :cond_b

    :try_start_6
    const-string v1, "action"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "control_connection_waiting"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v1, "port"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const-string v3, "Starting new proxy FTP control session"

    invoke-virtual {v2, v3}, Lorg/swiftp/af;->d(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/swiftp/ProxyConnector;->f:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lorg/swiftp/ProxyConnector;->a(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const-string v2, "startControlSession got null authed socket"

    invoke-virtual {v1, v2}, Lorg/swiftp/af;->i(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    :catch_2
    move-exception v1

    :try_start_7
    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const/4 v2, 0x4

    const-string v3, "JSONException in proxy incomingCommand"

    invoke-virtual {v1, v2, v3}, Lorg/swiftp/af;->l(ILjava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    :catch_3
    move-exception v0

    :try_start_8
    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Other exception in ProxyConnector: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    sget-object v0, Lorg/swiftp/ProxyConnector$State;->FAILED:Lorg/swiftp/ProxyConnector$State;

    invoke-direct {p0, v0}, Lorg/swiftp/ProxyConnector;->a(Lorg/swiftp/ProxyConnector$State;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-static {v6}, Lorg/swiftp/ae;->setProxyConnector(Lorg/swiftp/ProxyConnector;)V

    iput-object v6, p0, Lorg/swiftp/ProxyConnector;->f:Ljava/lang/String;

    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const-string v1, "ProxyConnector.run() returning"

    invoke-virtual {v0, v1}, Lorg/swiftp/af;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/swiftp/ProxyConnector;->a()V

    goto/16 :goto_3

    :cond_6
    :try_start_9
    new-instance v2, Lorg/swiftp/ag;

    invoke-direct {v2}, Lorg/swiftp/ag;-><init>()V

    new-instance v3, Lorg/swiftp/SessionThread;

    sget-object v4, Lorg/swiftp/SessionThread$Source;->PROXY:Lorg/swiftp/SessionThread$Source;

    invoke-direct {v3, v1, v2, v4}, Lorg/swiftp/SessionThread;-><init>(Ljava/net/Socket;Lorg/swiftp/ab;Lorg/swiftp/SessionThread$Source;)V

    invoke-virtual {v3}, Lorg/swiftp/SessionThread;->start()V

    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->a:Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;

    invoke-virtual {v1, v3}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->registerSessionThread(Lorg/swiftp/SessionThread;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lorg/swiftp/ae;->setProxyConnector(Lorg/swiftp/ProxyConnector;)V

    iput-object v6, p0, Lorg/swiftp/ProxyConnector;->f:Ljava/lang/String;

    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const-string v2, "ProxyConnector.run() returning"

    invoke-virtual {v1, v2}, Lorg/swiftp/af;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/swiftp/ProxyConnector;->a()V

    throw v0

    :cond_7
    :try_start_a
    const-string v3, "prefer_server"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v1, "host"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/swiftp/ProxyConnector;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "New preferred server: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/swiftp/af;->i(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_8
    const-string v3, "message"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v1, "text"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/swiftp/ProxyConnector;->k:Ljava/lang/String;

    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got news from proxy server: \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/swiftp/ProxyConnector;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/swiftp/af;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->updateClients()V

    goto/16 :goto_5

    :cond_9
    const-string v2, "noop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const-string v2, "Proxy noop"

    invoke-virtual {v1, v2}, Lorg/swiftp/af;->d(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_a
    iget-object v2, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const/4 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unsupported incoming action: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/swiftp/af;->l(ILjava/lang/String;)V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_5

    :cond_b
    :try_start_b
    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const/4 v2, 0x4

    const-string v3, "Response received but no responseWaiter"

    invoke-virtual {v1, v2, v3}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    goto/16 :goto_5

    :cond_c
    if-nez v1, :cond_d

    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const-string v2, "Command socket read 0 bytes, looping"

    invoke-virtual {v1, v2}, Lorg/swiftp/af;->d(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_d
    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const/4 v1, 0x3

    const-string v2, "Command socket end of stream, exiting"

    invoke-virtual {v0, v1, v2}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->i:Lorg/swiftp/ProxyConnector$State;

    sget-object v1, Lorg/swiftp/ProxyConnector$State;->DISCONNECTED:Lorg/swiftp/ProxyConnector$State;

    if-eq v0, v1, :cond_e

    sget-object v0, Lorg/swiftp/ProxyConnector$State;->FAILED:Lorg/swiftp/ProxyConnector$State;

    invoke-direct {p0, v0}, Lorg/swiftp/ProxyConnector;->a(Lorg/swiftp/ProxyConnector$State;)V

    :cond_e
    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const/4 v1, 0x4

    const-string v2, "ProxyConnector thread quitting cleanly"

    invoke-virtual {v0, v1, v2}, Lorg/swiftp/af;->l(ILjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    invoke-static {v6}, Lorg/swiftp/ae;->setProxyConnector(Lorg/swiftp/ProxyConnector;)V

    iput-object v6, p0, Lorg/swiftp/ProxyConnector;->f:Ljava/lang/String;

    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const-string v1, "ProxyConnector.run() returning"

    invoke-virtual {v0, v1}, Lorg/swiftp/af;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/swiftp/ProxyConnector;->a()V

    goto/16 :goto_3
.end method

.method public final sendRequest(Ljava/io/InputStream;Ljava/io/OutputStream;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p3}, Lorg/swiftp/ak;->a(Lorg/json/JSONObject;)[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    const/16 v1, 0x800

    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_0

    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const-string v2, "Proxy sendRequest short read on response"

    invoke-virtual {v1, v2}, Lorg/swiftp/af;->i(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, Lorg/swiftp/ak;->a([B)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v2, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const-string v3, "Null response to sendRequest"

    invoke-virtual {v2, v3}, Lorg/swiftp/af;->i(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, v1}, Lorg/swiftp/ProxyConnector;->a(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const-string v2, "Error response to sendRequest"

    invoke-virtual {v1, v2}, Lorg/swiftp/af;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IOException in proxy sendRequest: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/swiftp/af;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public final sendRequest(Ljava/net/Socket;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    const-string v2, "null socket in ProxyConnector.sendRequest()"

    invoke-virtual {v1, v2}, Lorg/swiftp/af;->i(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p2}, Lorg/swiftp/ProxyConnector;->sendRequest(Ljava/io/InputStream;Ljava/io/OutputStream;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lorg/swiftp/ProxyConnector;->b:Lorg/swiftp/af;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IOException in proxy sendRequest wrapper: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/swiftp/af;->i(Ljava/lang/String;)V

    goto :goto_0
.end method
