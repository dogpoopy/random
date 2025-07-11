.class Lcom/netease/ntunisdk/base/SDKManager$3;
.super Ljava/lang/Object;
.source "SDKManager.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/OnLogoutDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SDKManager;->setLogoutCallback(Lcom/netease/ntunisdk/base/callback/LogoutCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/SDKManager;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SDKManager;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SDKManager$3;->a:Lcom/netease/ntunisdk/base/SDKManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public logoutDone(I)V
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SDKManager$3;->a:Lcom/netease/ntunisdk/base/SDKManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SDKManager;->access$200(Lcom/netease/ntunisdk/base/SDKManager;)Lcom/netease/ntunisdk/base/callback/LogoutCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 237
    new-instance v0, Lcom/netease/ntunisdk/base/model/SdkState;

    invoke-direct {v0}, Lcom/netease/ntunisdk/base/model/SdkState;-><init>()V

    if-nez p1, :cond_0

    .line 239
    sget-object p1, Lcom/netease/ntunisdk/base/constant/a;->a:Lcom/netease/ntunisdk/base/constant/a;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/constant/a;->ordinal()I

    move-result p1

    iput p1, v0, Lcom/netease/ntunisdk/base/model/SdkState;->code:I

    .line 240
    sget-object p1, Lcom/netease/ntunisdk/base/constant/a;->a:Lcom/netease/ntunisdk/base/constant/a;

    iget-object p1, p1, Lcom/netease/ntunisdk/base/constant/a;->d:Ljava/lang/String;

    iput-object p1, v0, Lcom/netease/ntunisdk/base/model/SdkState;->message:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v1, p1, :cond_1

    .line 242
    sget-object p1, Lcom/netease/ntunisdk/base/constant/a;->g:Lcom/netease/ntunisdk/base/constant/a;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/constant/a;->ordinal()I

    move-result p1

    iput p1, v0, Lcom/netease/ntunisdk/base/model/SdkState;->code:I

    .line 243
    sget-object p1, Lcom/netease/ntunisdk/base/constant/a;->g:Lcom/netease/ntunisdk/base/constant/a;

    iget-object p1, p1, Lcom/netease/ntunisdk/base/constant/a;->d:Ljava/lang/String;

    iput-object p1, v0, Lcom/netease/ntunisdk/base/model/SdkState;->message:Ljava/lang/String;

    goto :goto_0

    .line 245
    :cond_1
    sget-object p1, Lcom/netease/ntunisdk/base/constant/a;->b:Lcom/netease/ntunisdk/base/constant/a;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/constant/a;->ordinal()I

    move-result p1

    iput p1, v0, Lcom/netease/ntunisdk/base/model/SdkState;->code:I

    .line 246
    sget-object p1, Lcom/netease/ntunisdk/base/constant/a;->b:Lcom/netease/ntunisdk/base/constant/a;

    iget-object p1, p1, Lcom/netease/ntunisdk/base/constant/a;->d:Ljava/lang/String;

    iput-object p1, v0, Lcom/netease/ntunisdk/base/model/SdkState;->message:Ljava/lang/String;

    .line 248
    :goto_0
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SDKManager$3;->a:Lcom/netease/ntunisdk/base/SDKManager;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/SDKManager;->access$200(Lcom/netease/ntunisdk/base/SDKManager;)Lcom/netease/ntunisdk/base/callback/LogoutCallback;

    move-result-object p1

    iget v1, v0, Lcom/netease/ntunisdk/base/model/SdkState;->code:I

    iget-object v2, v0, Lcom/netease/ntunisdk/base/model/SdkState;->message:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/model/SdkState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v0}, Lcom/netease/ntunisdk/base/callback/LogoutCallback;->onLogoutDone(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
