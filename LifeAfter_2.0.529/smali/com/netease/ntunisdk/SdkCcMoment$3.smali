.class Lcom/netease/ntunisdk/SdkCcMoment$3;
.super Ljava/lang/Object;
.source "SdkCcMoment.java"

# interfaces
.implements Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService$NotificationBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkCcMoment;->extendFunc(Ljava/lang/String;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkCcMoment;

.field final synthetic val$passesBuilder:Landroid/app/Notification$Builder;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkCcMoment;Landroid/app/Notification$Builder;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkCcMoment$3;->this$0:Lcom/netease/ntunisdk/SdkCcMoment;

    iput-object p2, p0, Lcom/netease/ntunisdk/SdkCcMoment$3;->val$passesBuilder:Landroid/app/Notification$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Build(Landroid/content/Context;Landroid/app/Notification$Builder;)Landroid/app/Notification;
    .locals 0

    .line 400
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkCcMoment$3;->val$passesBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method
