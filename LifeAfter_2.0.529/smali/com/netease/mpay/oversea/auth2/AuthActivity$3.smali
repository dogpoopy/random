.class Lcom/netease/mpay/oversea/auth2/AuthActivity$3;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/OnLoginDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/auth2/AuthActivity;->initUniSDK()V
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

    .line 98
    iput-object p1, p0, Lcom/netease/mpay/oversea/auth2/AuthActivity$3;->this$0:Lcom/netease/mpay/oversea/auth2/AuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loginDone(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "loginDone, code = %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "auth_main"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/netease/mpay/oversea/auth2/AuthActivity$3;->this$0:Lcom/netease/mpay/oversea/auth2/AuthActivity;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/auth2/AuthActivity;->access$200(Lcom/netease/mpay/oversea/auth2/AuthActivity;I)V

    return-void
.end method
