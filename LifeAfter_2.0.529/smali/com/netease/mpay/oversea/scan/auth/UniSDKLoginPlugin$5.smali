.class Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$5;
.super Ljava/lang/Object;
.source "UniSDKLoginPlugin.java"

# interfaces
.implements Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->login()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$5;->this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(ILorg/json/JSONObject;)V
    .locals 0

    if-nez p1, :cond_0

    .line 193
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$5;->this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

    invoke-static {p1}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->access$100(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$5;->this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

    invoke-static {p1}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->access$900(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)V

    :goto_0
    return-void
.end method
