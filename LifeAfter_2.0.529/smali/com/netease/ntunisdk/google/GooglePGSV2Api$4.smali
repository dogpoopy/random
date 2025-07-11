.class Lcom/netease/ntunisdk/google/GooglePGSV2Api$4;
.super Ljava/lang/Object;
.source "GooglePGSV2Api.java"

# interfaces
.implements Lcom/netease/ntunisdk/google/SignInCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/google/GooglePGSV2Api;->updateEvent(Landroid/app/Activity;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/google/SignInCallback<",
        "Lcom/google/android/gms/games/Player;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/google/GooglePGSV2Api;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$eventId:Ljava/lang/String;

.field final synthetic val$incrementAmount:I


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/google/GooglePGSV2Api;Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$4;->this$0:Lcom/netease/ntunisdk/google/GooglePGSV2Api;

    iput-object p2, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$4;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$4;->val$eventId:Ljava/lang/String;

    iput p4, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$4;->val$incrementAmount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2

    const-string v0, "GooglePGSApi_V2"

    const-string v1, "null account"

    .line 218
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/google/android/gms/games/Player;)V
    .locals 2

    .line 212
    iget-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$4;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/google/android/gms/games/PlayGames;->getEventsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/EventsClient;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$4;->val$eventId:Ljava/lang/String;

    iget v1, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$4;->val$incrementAmount:I

    .line 213
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/games/EventsClient;->increment(Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 209
    check-cast p1, Lcom/google/android/gms/games/Player;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/google/GooglePGSV2Api$4;->onSuccess(Lcom/google/android/gms/games/Player;)V

    return-void
.end method
