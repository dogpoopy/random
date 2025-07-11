.class Lcom/netease/mpay/oversea/auth2/AuthActivity$2;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/auth2/AuthActivity;->onProtocolFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mpay/oversea/auth2/AuthActivity;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/auth2/AuthActivity;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/netease/mpay/oversea/auth2/AuthActivity$2;->this$0:Lcom/netease/mpay/oversea/auth2/AuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/netease/mpay/oversea/auth2/AuthActivity$2;->this$0:Lcom/netease/mpay/oversea/auth2/AuthActivity;

    invoke-static {v0}, Lcom/netease/mpay/oversea/auth2/AuthActivity;->access$100(Lcom/netease/mpay/oversea/auth2/AuthActivity;)V

    return-void
.end method
