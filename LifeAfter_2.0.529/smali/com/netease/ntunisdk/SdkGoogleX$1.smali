.class Lcom/netease/ntunisdk/SdkGoogleX$1;
.super Ljava/lang/Object;
.source "SdkGoogleX.java"

# interfaces
.implements Lcom/netease/ntunisdk/google/CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkGoogleX;->login()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/google/CallBack<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkGoogleX;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkGoogleX;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleX$1;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/lang/Boolean;)V
    .locals 1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleX$1;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/SdkGoogleX;->setLoginStat(I)V

    .line 95
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleX$1;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/SdkGoogleX;->loginDone(I)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleX$1;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/SdkGoogleX;->resetCommonProp()V

    .line 98
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleX$1;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/SdkGoogleX;->loginDone(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onFinish(Ljava/lang/Object;)V
    .locals 0

    .line 90
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkGoogleX$1;->onFinish(Ljava/lang/Boolean;)V

    return-void
.end method
