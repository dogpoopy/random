.class Lcom/netease/ntunisdk/SdkGoogleX$5;
.super Ljava/lang/Object;
.source "SdkGoogleX.java"

# interfaces
.implements Lcom/netease/ntunisdk/google/CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkGoogleX;->updateAchievement(Ljava/lang/String;I)V
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

    .line 230
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleX$5;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/lang/Boolean;)V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX$5;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/SdkGoogleX;->updateAchievementFinished(Z)V

    return-void
.end method

.method public bridge synthetic onFinish(Ljava/lang/Object;)V
    .locals 0

    .line 230
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkGoogleX$5;->onFinish(Ljava/lang/Boolean;)V

    return-void
.end method
