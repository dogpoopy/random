.class Lcom/netease/ntunisdk/SdkGoogleX$3;
.super Ljava/lang/Object;
.source "SdkGoogleX.java"

# interfaces
.implements Lcom/netease/ntunisdk/google/CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkGoogleX;->updateRank(Ljava/lang/String;D)V
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

    .line 195
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleX$3;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/lang/Boolean;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX$3;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/SdkGoogleX;->updateRankFinished(Z)V

    return-void
.end method

.method public bridge synthetic onFinish(Ljava/lang/Object;)V
    .locals 0

    .line 195
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkGoogleX$3;->onFinish(Ljava/lang/Boolean;)V

    return-void
.end method
