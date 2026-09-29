.class public final Lcom/superhexa/lib/channel/tools/ConnectUtil;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/n0;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConnectUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectUtil.kt\ncom/superhexa/lib/channel/tools/ConnectUtil\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,605:1\n48#2,4:606\n*S KotlinDebug\n*F\n+ 1 ConnectUtil.kt\ncom/superhexa/lib/channel/tools/ConnectUtil\n*L\n53#1:606,4\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nConnectUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectUtil.kt\ncom/superhexa/lib/channel/tools/ConnectUtil\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,605:1\n48#2,4:606\n*S KotlinDebug\n*F\n+ 1 ConnectUtil.kt\ncom/superhexa/lib/channel/tools/ConnectUtil\n*L\n53#1:606,4\n*E\n"
    }
.end annotation


# static fields
.field private static volatile xgIdentity:[Ljava/lang/Object;
.field public static final a:Lcom/superhexa/lib/channel/tools/ConnectUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lkotlinx/coroutines/CoroutineExceptionHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Lkotlinx/coroutines/a0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static d:Landroid/net/Network; = null
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static e:Landroid/net/ConnectivityManager$NetworkCallback; = null
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static final f:I = 0x1

.field public static final g:I = -0x1

.field public static final h:I = 0x0

.field private static final i:J = 0x1388L

.field private static final j:J = 0x4e20L

.field private static final k:J = 0x12cL

.field private static final l:J = 0x1388L

.field private static final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final n:I = 0x5

.field private static o:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static p:Landroid/net/wifi/WifiManager$WifiLock;

.field private static final q:Ljava/net/Socket;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superhexa/lib/channel/tools/ConnectUtil;

    invoke-direct {v0}, Lcom/superhexa/lib/channel/tools/ConnectUtil;-><init>()V

    sput-object v0, Lcom/superhexa/lib/channel/tools/ConnectUtil;->a:Lcom/superhexa/lib/channel/tools/ConnectUtil;

    sget-object v0, Lkotlinx/coroutines/CoroutineExceptionHandler;->q0:Lkotlinx/coroutines/CoroutineExceptionHandler$b;

    new-instance v1, Lcom/superhexa/lib/channel/tools/ConnectUtil$b;

    invoke-direct {v1, v0}, Lcom/superhexa/lib/channel/tools/ConnectUtil$b;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$b;)V

    sput-object v1, Lcom/superhexa/lib/channel/tools/ConnectUtil;->b:Lkotlinx/coroutines/CoroutineExceptionHandler;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/v2;->c(Lkotlinx/coroutines/x1;ILjava/lang/Object;)Lkotlinx/coroutines/a0;

    move-result-object v0

    sput-object v0, Lcom/superhexa/lib/channel/tools/ConnectUtil;->c:Lkotlinx/coroutines/a0;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/superhexa/lib/channel/tools/ConnectUtil;->m:Ljava/util/List;

    const-string v0, ""

    sput-object v0, Lcom/superhexa/lib/channel/tools/ConnectUtil;->o:Ljava/lang/String;

    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    sput-object v0, Lcom/superhexa/lib/channel/tools/ConnectUtil;->q:Ljava/net/Socket;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A(ILandroid/net/wifi/WifiManager;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->disconnect()Z

    const/4 p0, 0x1

    invoke-virtual {p2, p1, p0}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->reassociate()Z

    sget-object v0, Ltimber/log/b;->a:Ltimber/log/b$b;

    const-string/jumbo v1, "\u7981\u7528\u540e\u7684\u5f53\u524dSSID %s"

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ltimber/log/b$b;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const-string/jumbo v1, "wifiManager.javaClass.declaredMethods"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/f0;->o(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "connect"

    const/4 v5, 0x0

    if-ge v3, v1, :cond_2

    :try_start_1
    aget-object v6, v0, v3

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7, p0}, Lkotlin/text/m;->L1(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    const-string/jumbo v8, "types"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/f0;->o(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v8, v7

    if-nez v8, :cond_0

    move v8, p0

    goto :goto_1

    :cond_0
    move v8, v2

    :goto_1
    xor-int/2addr v8, p0

    if-eqz v8, :cond_1

    const-string v8, "int"

    aget-object v7, v7, v2

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7, p0}, Lkotlin/text/m;->L1(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object v6, v5

    :goto_2
    if-eqz v6, :cond_4

    sget-object p0, Ltimber/log/b;->a:Ltimber/log/b$b;

    const-string v0, "connectAP connectMethod %s Build.VERSION.SDK_INT %s"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v6, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ltimber/log/b$b;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-class p0, Landroid/net/wifi/WifiManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, v5}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p2, v4, p1}, Lorg/lsposed/hiddenapibypass/i;->i(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/superhexa/lib/channel/tools/ConnectUtil;->p:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz p0, :cond_5

    if-nez p0, :cond_3

    const-string/jumbo p0, "wifiLock"

    invoke-static {p0}, Lkotlin/jvm/internal/f0;->S(Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_4

    :cond_3
    move-object v5, p0

    :goto_3
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :goto_4
    :try_start_3
    sget-object p1, Ltimber/log/b;->a:Ltimber/log/b$b;

    const-string p2, "connectAP  \u53cd\u5c04 exception %s"

    invoke-static {p0}, Lcom/superhexa/supervision/library/base/basecommon/extension/f;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Ltimber/log/b$b;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_4
    sget-object p0, Ltimber/log/b;->a:Ltimber/log/b$b;

    const-string p1, "connectAP \u6b64\u7248\u672c %s \u672a\u627e\u5230\u53cd\u5c04\u65b9\u6cd5"

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ltimber/log/b$b;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_6
    return-void
.end method

.method private final E()Z
    .locals 1

    sget-object p0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v0, "SMARTISAN"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/f0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic a(Lcom/superhexa/lib/channel/tools/ConnectUtil;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/superhexa/lib/channel/tools/ConnectUtil;->k(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic b(Lcom/superhexa/lib/channel/tools/ConnectUtil;Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/superhexa/lib/channel/tools/ConnectUtil;->o(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public static final synthetic c(Lcom/superhexa/lib/channel/tools/ConnectUtil;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/ScanResult;Lgc/o;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/superhexa/lib/channel/tools/ConnectUtil;->q(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/ScanResult;Lgc/o;)V

    return-void
.end method

.method public static final synthetic d(Lcom/superhexa/lib/channel/tools/ConnectUtil;Ljava/lang/String;Landroid/content/Context;)Lkotlinx/coroutines/flow/e;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/superhexa/lib/channel/tools/ConnectUtil;->y(Ljava/lang/String;Landroid/content/Context;)Lkotlinx/coroutines/flow/e;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/superhexa/lib/channel/tools/ConnectUtil;->m:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic f(Lcom/superhexa/lib/channel/tools/ConnectUtil;Landroid/content/Context;)Lkotlinx/coroutines/flow/e;
    .locals 0

    invoke-direct {p0, p1}, Lcom/superhexa/lib/channel/tools/ConnectUtil;->z(Landroid/content/Context;)Lkotlinx/coroutines/flow/e;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic i(Lcom/superhexa/lib/channel/tools/ConnectUtil;ILandroid/net/wifi/WifiManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/superhexa/lib/channel/tools/ConnectUtil;->A(ILandroid/net/wifi/WifiManager;)V

    return-void
.end method

.method public static final synthetic j(Landroid/net/Network;)V
    .locals 0

    sput-object p0, Lcom/superhexa/lib/channel/tools/ConnectUtil;->d:Landroid/net/Network;

    return-void
.end method

.method private final k(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    const-string v0, "XGNetworkFix"
    const-string v1, "specifier-only connection; no competing suggestion added"
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    return-void
.end method

.method private final l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lgc/o;)V
    .locals 8
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lgc/o<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroid/net/Network;",
            "Lkotlin/d1;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Ltimber/log/b;->a:Ltimber/log/b$b;

    const-string v1, "afterAndroidQConnect ssid %s password %s"

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ltimber/log/b$b;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, ""

    invoke-static {p2, v1}, Lkotlin/jvm/internal/f0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p3, v1}, Lkotlin/jvm/internal/f0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superhexa/lib/channel/tools/ConnectUtil$afterAndroidQConnect$1;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/superhexa/lib/channel/tools/ConnectUtil$afterAndroidQConnect$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lgc/o;Lkotlin/coroutines/c;)V

    const/4 v6, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, v0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/h;->e(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lgc/o;ILjava/lang/Object;)Lkotlinx/coroutines/x1;

    return-void

    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p4, p0, p1}, Lgc/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "afterAndroidQConnect ssid\u6216password\u4e3a\u7a7a"

    invoke-virtual {v0, p1, p0}, Ltimber/log/b$b;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private final m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lgc/o;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lgc/o<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroid/net/Network;",
            "Lkotlin/d1;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.net.wifi.WifiManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/f0;->n(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v2

    check-cast v7, Landroid/net/wifi/WifiManager;

    sget-object v2, Lcom/superhexa/supervision/library/net/retrofit/utils/NetWorkUtil;->a:Lcom/superhexa/supervision/library/net/retrofit/utils/NetWorkUtil;

    move-object v3, p1

    invoke-virtual {v2, p1}, Lcom/superhexa/supervision/library/net/retrofit/utils/NetWorkUtil;->y(Landroid/content/Context;)Z

    move-result v2

    sget-object v4, Ltimber/log/b;->a:Ltimber/log/b$b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connectAP wifiConnected ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v8}, Ltimber/log/b$b;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x1

    if-nez v2, :cond_0

    invoke-virtual {v7, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string v2, "connectAP setWifiEnabled"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v6}, Ltimber/log/b$b;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const v6, 0x7fffffff

    iput v6, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v7, v2}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v6

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v8, "connectAP \u51c6\u5907\u8fde\u63a5 sdk int is  %s"

    invoke-virtual {v4, v8, v2}, Ltimber/log/b$b;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "connectAP  ssid %s password %s netId %s"

    invoke-virtual {v4, v1, v0}, Ltimber/log/b$b;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "sv1Connect"

    invoke-virtual {v7, v5, v0}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    const-string/jumbo v1, "wifiManager.createWifiLo\u2026_MODE_FULL, \"sv1Connect\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/f0;->o(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/superhexa/lib/channel/tools/ConnectUtil;->p:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-static {}, Lkotlinx/coroutines/b1;->c()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v11, Lcom/superhexa/lib/channel/tools/ConnectUtil$beforeAndordQConnect$1;

    const/4 v9, 0x0

    move-object v4, v11

    move-object v5, p1

    move-object/from16 v8, p4

    invoke-direct/range {v4 .. v9}, Lcom/superhexa/lib/channel/tools/ConnectUtil$beforeAndordQConnect$1;-><init>(Landroid/content/Context;ILandroid/net/wifi/WifiManager;Lgc/o;Lkotlin/coroutines/c;)V

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v10, 0x0

    move-object v8, p0

    move-object v9, v0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/h;->e(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lgc/o;ILjava/lang/Object;)Lkotlinx/coroutines/x1;

    return-void
.end method

.method private final n()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private final o(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Ltimber/log/b;->a:Ltimber/log/b$b;

    invoke-static {p0}, Lcom/superhexa/supervision/library/base/basecommon/extension/f;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2}, Ltimber/log/b$b;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private final q(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/ScanResult;Lgc/o;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            "Lgc/o<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroid/net/Network;",
            "Lkotlin/d1;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "connectivity"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/f0;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/net/ConnectivityManager;

    new-instance p1, Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    invoke-direct {p1}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;-><init>()V

    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    invoke-virtual {p1, p3}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->setWpa2Passphrase(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    new-instance p2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->build()Landroid/net/wifi/WifiNetworkSpecifier;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    const/16 p2, 0xd

    invoke-virtual {p1, p2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    const-string p2, "Builder()\n            .a\u2026TED)\n            .build()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/f0;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/superhexa/lib/channel/tools/ConnectUtil;->xgReleaseOld(Landroid/net/ConnectivityManager;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    new-instance p2, Lcom/superhexa/lib/channel/tools/ConnectUtil$a;

    invoke-direct {p2, p0, p5}, Lcom/superhexa/lib/channel/tools/ConnectUtil$a;-><init>(Landroid/net/ConnectivityManager;Lgc/o;)V

    sput-object p2, Lcom/superhexa/lib/channel/tools/ConnectUtil;->e:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-static {p2}, Lkotlin/jvm/internal/f0;->m(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public static synthetic s(Lcom/superhexa/lib/channel/tools/ConnectUtil;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lgc/o;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/superhexa/lib/channel/tools/ConnectUtil;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lgc/o;)V

    return-void
.end method

.method private final y(Ljava/lang/String;Landroid/content/Context;)Lkotlinx/coroutines/flow/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Lkotlinx/coroutines/flow/e<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    new-instance p0, Lcom/superhexa/lib/channel/tools/ConnectUtil$getScanResult$1;

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/superhexa/lib/channel/tools/ConnectUtil$getScanResult$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/c;)V

    invoke-static {p0}, Lkotlinx/coroutines/flow/g;->s(Lgc/o;)Lkotlinx/coroutines/flow/e;

    move-result-object p0

    return-object p0
.end method

.method private final z(Landroid/content/Context;)Lkotlinx/coroutines/flow/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lkotlinx/coroutines/flow/e<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance p0, Lcom/superhexa/lib/channel/tools/ConnectUtil$getWifiStateBroadcastResult$1;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/superhexa/lib/channel/tools/ConnectUtil$getWifiStateBroadcastResult$1;-><init>(Landroid/content/Context;Lkotlin/coroutines/c;)V

    invoke-static {p0}, Lkotlinx/coroutines/flow/g;->s(Lgc/o;)Lkotlinx/coroutines/flow/e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final B(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param


    invoke-static {p1, p2}, Lcom/superhexa/lib/channel/tools/ConnectUtil;->xgMatches(Landroid/content/Context;Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :xg_legacy
    const/4 v0, 0x1
    return v0
    :xg_legacy

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/f0;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ssid"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/f0;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "wifi"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type android.net.wifi.WifiManager"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/f0;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    const-string p0, "wifiInfo.ssid"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/f0;->o(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ltimber/log/b;->a:Ltimber/log/b$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentConnectedSSID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, p1, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Ltimber/log/b$b;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x2

    const/4 v1, 0x0

    const-string v2, "\""

    invoke-static {v0, v2, p1, p0, v1}, Lkotlin/text/m;->W2(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "\""

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/m;->l2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {p2, v0}, Lkotlin/jvm/internal/f0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method public final C(Landroid/content/Context;)Z
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/f0;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo p1, "wifi"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type android.net.wifi.WifiManager"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/f0;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo p0, "wifiInfo.ssid"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/f0;->o(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ltimber/log/b;->a:Ltimber/log/b$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentConnectedSSID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, p1, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Ltimber/log/b$b;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "\""

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v0, p0, p1, v6, v7}, Lkotlin/text/m;->W2(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "\""

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/m;->l2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lkotlin/text/m;->V1(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v1, 0x1

    xor-int/2addr p0, v1

    if-eqz p0, :cond_1

    const-string p0, "fengchao"

    invoke-static {v0, p0, p1, v6, v7}, Lkotlin/text/m;->W2(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p1, v1

    :cond_1
    return p1
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/superhexa/lib/channel/tools/ConnectUtil;->c:Lkotlinx/coroutines/a0;

    invoke-static {}, Lkotlinx/coroutines/b1;->e()Lkotlinx/coroutines/h2;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    sget-object v0, Lcom/superhexa/lib/channel/tools/ConnectUtil;->b:Lkotlinx/coroutines/CoroutineExceptionHandler;

    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0
.end method

.method public final r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lgc/o;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lgc/o;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lgc/o<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroid/net/Network;",
            "Lkotlin/d1;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/f0;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ssid"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/f0;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/f0;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p2, Lcom/superhexa/lib/channel/tools/ConnectUtil;->o:Ljava/lang/String;

    sget-object v0, Ltimber/log/b;->a:Ltimber/log/b$b;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "begin connectAP Build.VERSION.SDK_INT %s"

    invoke-virtual {v0, v2, v1}, Ltimber/log/b$b;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/superhexa/lib/channel/tools/ConnectUtil;->E()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/superhexa/lib/channel/tools/ConnectUtil;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/superhexa/lib/channel/tools/ConnectUtil;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lgc/o;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/superhexa/lib/channel/tools/ConnectUtil;->m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lgc/o;)V

    :goto_1
    return-void
.end method

.method public final t(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/f0;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo p1, "wifi"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type android.net.wifi.WifiManager"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/f0;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    sget-object p0, Ltimber/log/b;->a:Ltimber/log/b$b;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentConnectedSSID : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v6, 0x0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Ltimber/log/b$b;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "curSSID"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/f0;->o(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "\""

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v0, p1, v6, v7, v8}, Lkotlin/text/m;->W2(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/f0;->o(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "\""

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/m;->l2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0, p0}, Lkotlin/jvm/internal/f0;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/text/m;->V1(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    invoke-static {v0, p0}, Lkotlin/jvm/internal/f0;->o(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "unknow"

    invoke-static {v0, p1, v6, v7, v8}, Lkotlin/text/m;->W2(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v0, p0}, Lkotlin/jvm/internal/f0;->o(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final u(Landroid/content/Context;)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "item.SSID"

    const-string/jumbo v1, "wifiLock"

    const-string v2, "context"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/f0;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ltimber/log/b;->a:Ltimber/log/b$b;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "connectAP disConnectApWifi"

    invoke-virtual {v2, v5, v4}, Ltimber/log/b$b;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/superhexa/lib/channel/tools/ConnectUtil;->E()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/superhexa/lib/channel/tools/ConnectUtil;->n()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "connectivity"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/f0;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/net/ConnectivityManager;

    sget-object p1, Lcom/superhexa/lib/channel/tools/ConnectUtil;->e:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const-string/jumbo v0, "unregisterNetworkCallback %s "

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Ltimber/log/b$b;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    sput-object v5, Lcom/superhexa/lib/channel/tools/ConnectUtil;->e:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p0, v5}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    goto/16 :goto_4

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v4, "null cannot be cast to non-null type android.net.wifi.WifiManager"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/f0;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/net/wifi/WifiManager;

    sget-object v4, Lcom/superhexa/supervision/library/net/retrofit/utils/NetWorkUtil;->a:Lcom/superhexa/supervision/library/net/retrofit/utils/NetWorkUtil;

    invoke-virtual {v4, p1}, Lcom/superhexa/supervision/library/net/retrofit/utils/NetWorkUtil;->y(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v4, "connectAP disConnectApWifi wifi state %s"

    invoke-virtual {v2, v4, p1}, Ltimber/log/b$b;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v4, v0}, Lkotlin/jvm/internal/f0;->o(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lkotlin/text/Regex;

    const-string v7, "^\"sv(.)-(.*)?\""

    invoke-direct {v6, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v4

    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v6, :cond_3

    invoke-static {v6, v0}, Lkotlin/jvm/internal/f0;->o(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lcom/superhexa/lib/channel/tools/ConnectUtil;->o:Ljava/lang/String;

    const/4 v8, 0x2

    invoke-static {v6, v7, v3, v8, v5}, Lkotlin/text/m;->W2(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz v4, :cond_3

    :cond_4
    sget-object v4, Ltimber/log/b;->a:Ltimber/log/b$b;

    const-string/jumbo v6, "\u65ad\u5f00\u65f6 \u5220\u9664 \u81ea\u5df1\u521b\u5efa\u7684\u7f51\u7edc item.SSID %s"

    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ltimber/log/b$b;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_5
    sget-object p1, Lcom/superhexa/lib/channel/tools/ConnectUtil;->p:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz p1, :cond_8

    if-nez p1, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/f0;->S(Ljava/lang/String;)V

    move-object p1, v5

    :cond_6
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lcom/superhexa/lib/channel/tools/ConnectUtil;->p:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez p1, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/f0;->S(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move-object v5, p1

    :goto_2
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_8
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    goto :goto_4

    :goto_3
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object p1, Lcom/superhexa/lib/channel/tools/ConnectUtil;->p:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz p1, :cond_8

    if-nez p1, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/f0;->S(Ljava/lang/String;)V

    move-object p1, v5

    :cond_9
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lcom/superhexa/lib/channel/tools/ConnectUtil;->p:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez p1, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/f0;->S(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    move-object v5, p1

    goto :goto_2

    :goto_4
    return-void

    :goto_5
    sget-object v0, Lcom/superhexa/lib/channel/tools/ConnectUtil;->p:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_d

    if-nez v0, :cond_b

    invoke-static {v1}, Lkotlin/jvm/internal/f0;->S(Ljava/lang/String;)V

    move-object v0, v5

    :cond_b
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/superhexa/lib/channel/tools/ConnectUtil;->p:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_c

    invoke-static {v1}, Lkotlin/jvm/internal/f0;->S(Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    move-object v5, v0

    :goto_6
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_d
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    throw p1
.end method

.method public final x(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/f0;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo p1, "wifi"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type android.net.wifi.WifiManager"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/f0;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo p0, "wifiInfo.ssid"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/f0;->o(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ltimber/log/b;->a:Ltimber/log/b$b;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentConnectedSSID : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Ltimber/log/b$b;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x2

    const/4 p1, 0x0

    const-string v2, "\""

    invoke-static {v0, v2, v1, p0, p1}, Lkotlin/text/m;->W2(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "\""

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/m;->l2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :cond_1
    :goto_0
    return-object v0
.end method


.method private static xgLive(Landroid/content/Context;Landroid/net/Network;)Z
    .locals 3
    if-eqz p0, :xg_no
    if-eqz p1, :xg_no
    sget-object v0, Lcom/superhexa/lib/channel/tools/ConnectUtil;->d:Landroid/net/Network;
    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :xg_no
    const-string v0, "connectivity"
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/net/ConnectivityManager;
    if-eqz v0, :xg_no
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBoundNetworkForProcess()Landroid/net/Network;
    move-result-object v1
    invoke-virtual {p1, v1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :xg_no
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;
    move-result-object v1
    if-eqz v1, :xg_no
    const/4 v2, 0x1
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z
    move-result v1
    if-eqz v1, :xg_no
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;
    move-result-object v0
    if-eqz v0, :xg_no
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;
    move-result-object v0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    move-result v0
    if-nez v0, :xg_no
    const/4 v0, 0x1
    return v0
    :xg_no
    const/4 v0, 0x0
    return v0
.end method


.method public static xgRemember(Landroid/content/Context;Landroid/net/Network;Ljava/lang/String;)Z
    .locals 2
    if-eqz p2, :xg_no
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z
    move-result v0
    if-nez v0, :xg_no
    invoke-static {p0, p1}, Lcom/superhexa/lib/channel/tools/ConnectUtil;->xgLive(Landroid/content/Context;Landroid/net/Network;)Z
    move-result v0
    if-eqz v0, :xg_no
    filled-new-array {p1, p2}, [Ljava/lang/Object;
    move-result-object v0
    sput-object v0, Lcom/superhexa/lib/channel/tools/ConnectUtil;->xgIdentity:[Ljava/lang/Object;
    const/4 v0, 0x1
    return v0
    :xg_no
    const/4 v0, 0x0
    return v0
.end method


.method private static xgMatches(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    sget-object v0, Lcom/superhexa/lib/channel/tools/ConnectUtil;->xgIdentity:[Ljava/lang/Object;
    if-eqz v0, :xg_no
    if-eqz p1, :xg_no
    const/4 v1, 0x1
    aget-object v1, v0, v1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :xg_no
    const/4 v1, 0x0
    aget-object v0, v0, v1
    check-cast v0, Landroid/net/Network;
    invoke-static {p0, v0}, Lcom/superhexa/lib/channel/tools/ConnectUtil;->xgLive(Landroid/content/Context;Landroid/net/Network;)Z
    move-result v0
    return v0
    :xg_no
    const/4 v0, 0x0
    return v0
.end method


.method private static xgReleaseOld(Landroid/net/ConnectivityManager;)V
    .locals 2
    sget-object v0, Lcom/superhexa/lib/channel/tools/ConnectUtil;->e:Landroid/net/ConnectivityManager$NetworkCallback;
    const/4 v1, 0x0
    sput-object v1, Lcom/superhexa/lib/channel/tools/ConnectUtil;->e:Landroid/net/ConnectivityManager$NetworkCallback;
    sput-object v1, Lcom/superhexa/lib/channel/tools/ConnectUtil;->d:Landroid/net/Network;
    sput-object v1, Lcom/superhexa/lib/channel/tools/ConnectUtil;->xgIdentity:[Ljava/lang/Object;
    if-eqz v0, :xg_done
    :xg_try
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :xg_try_end
    .catch Ljava/lang/IllegalArgumentException; {:xg_try .. :xg_try_end} :xg_catch
    goto :xg_done
    :xg_catch
    move-exception v0
    :xg_done
    return-void
.end method


.method public static xgClearIfLost(Landroid/net/ConnectivityManager;Landroid/net/Network;)V
    .locals 1
    sget-object v0, Lcom/superhexa/lib/channel/tools/ConnectUtil;->d:Landroid/net/Network;
    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :xg_done
    const/4 v0, 0x0
    sput-object v0, Lcom/superhexa/lib/channel/tools/ConnectUtil;->d:Landroid/net/Network;
    sput-object v0, Lcom/superhexa/lib/channel/tools/ConnectUtil;->xgIdentity:[Ljava/lang/Object;
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z
    :xg_done
    return-void
.end method
