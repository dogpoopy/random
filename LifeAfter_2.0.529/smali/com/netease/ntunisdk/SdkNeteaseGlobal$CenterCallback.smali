.class Lcom/netease/ntunisdk/SdkNeteaseGlobal$CenterCallback;
.super Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;
.source "SdkNeteaseGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/SdkNeteaseGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;


# direct methods
.method private constructor <init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)V
    .locals 1

    .line 2203
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$CenterCallback;->this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lcom/netease/ntunisdk/SdkNeteaseGlobal$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lcom/netease/ntunisdk/SdkNeteaseGlobal$1;)V
    .locals 0

    .line 2203
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$CenterCallback;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onLoginSuccess(Lcom/netease/mpay/oversea/User;)V
    .locals 3

    .line 2211
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$CenterCallback;->this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

    const-string v1, "GLOBAL_SWITCH_ACCOUNT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setPropInt(Ljava/lang/String;I)V

    .line 2212
    invoke-super {p0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;->onLoginSuccess(Lcom/netease/mpay/oversea/User;)V

    return-void
.end method
