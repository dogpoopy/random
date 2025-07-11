.class Lcom/netease/ntunisdk/SdkCcMoment$1;
.super Ljava/lang/Object;
.source "SdkCcMoment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkCcMoment;->extendFunc(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkCcMoment;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkCcMoment;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkCcMoment$1;->this$0:Lcom/netease/ntunisdk/SdkCcMoment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 236
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkCcMoment$1;->this$0:Lcom/netease/ntunisdk/SdkCcMoment;

    invoke-static {p1}, Lcom/netease/ntunisdk/SdkCcMoment;->access$000(Lcom/netease/ntunisdk/SdkCcMoment;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "android.permission.RECORD_AUDIO"

    aput-object v1, p2, v0

    invoke-static {}, Lcom/netease/ntunisdk/SdkCcMoment;->access$100()I

    move-result v0

    invoke-static {p1, p2, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
