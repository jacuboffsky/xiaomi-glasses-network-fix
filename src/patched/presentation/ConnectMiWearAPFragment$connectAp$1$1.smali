.class final Lcom/superhexa/lib/channel/presentation/ConnectMiWearAPFragment$connectAp$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lic/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superhexa/lib/channel/presentation/ConnectMiWearAPFragment;->connectAp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lic/o<",
        "Ljava/lang/Integer;",
        "Landroid/net/Network;",
        "Lkotlin/d1;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "",
        "code",
        "Landroid/net/Network;",
        "network",
        "Lkotlin/d1;",
        "invoke",
        "(ILandroid/net/Network;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/superhexa/lib/channel/presentation/ConnectMiWearAPFragment;


# direct methods
.method constructor <init>(Lcom/superhexa/lib/channel/presentation/ConnectMiWearAPFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/superhexa/lib/channel/presentation/ConnectMiWearAPFragment$connectAp$1$1;->this$0:Lcom/superhexa/lib/channel/presentation/ConnectMiWearAPFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Landroid/net/Network;

    invoke-virtual {p0, p1, p2}, Lcom/superhexa/lib/channel/presentation/ConnectMiWearAPFragment$connectAp$1$1;->invoke(ILandroid/net/Network;)V

    sget-object p0, Lkotlin/d1;->a:Lkotlin/d1;

    return-object p0
.end method

.method public final invoke(ILandroid/net/Network;)V
    .locals 2
    iget-object v0, p0, Lcom/superhexa/lib/channel/presentation/ConnectMiWearAPFragment$connectAp$1$1;->this$0:Lcom/superhexa/lib/channel/presentation/ConnectMiWearAPFragment;
    invoke-static {v0}, Lcom/superhexa/lib/channel/presentation/ConnectMiWearAPFragment;->access$getHandler(Lcom/superhexa/lib/channel/presentation/ConnectMiWearAPFragment;)Landroid/os/Handler;
    move-result-object v0
    const/16 v1, 0xcf
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
    move-result-object v1
    iput p1, v1, Landroid/os/Message;->arg1:I
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    return-void
.end method
