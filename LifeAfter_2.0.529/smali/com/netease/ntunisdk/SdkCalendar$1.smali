.class Lcom/netease/ntunisdk/SdkCalendar$1;
.super Ljava/lang/Object;
.source "SdkCalendar.java"

# interfaces
.implements Lcom/netease/ntunisdk/modules/api/ModulesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkCalendar;->init(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkCalendar;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkCalendar;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkCalendar$1;->this$0:Lcom/netease/ntunisdk/SdkCalendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extendFuncCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "UniSDK Calendar"

    const-string p2, "extendFuncCallback..."

    .line 76
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkCalendar$1;->this$0:Lcom/netease/ntunisdk/SdkCalendar;

    invoke-virtual {p1, p3}, Lcom/netease/ntunisdk/SdkCalendar;->extendFunc(Ljava/lang/String;)V

    return-void
.end method
