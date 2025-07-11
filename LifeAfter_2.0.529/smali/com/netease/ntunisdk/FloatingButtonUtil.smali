.class Lcom/netease/ntunisdk/FloatingButtonUtil;
.super Ljava/lang/Object;
.source "FloatingButtonUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/FloatingButtonUtil$Callback;
    }
.end annotation


# static fields
.field private static final REQ_CODE:I

.field private static final STATE_AGREE:I = 0x1

.field private static final STATE_NULL:I = 0x0

.field private static final STATE_REJECT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FloatingButtonUtil"

.field private static sCallback:Lcom/netease/ntunisdk/FloatingButtonUtil$Callback;

.field private static sIntent:Landroid/content/Intent;

.field private static sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "FloatingButtonUtil"

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    sput v0, Lcom/netease/ntunisdk/FloatingButtonUtil;->REQ_CODE:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/SharedPreferences;
    .locals 1

    .line 16
    sget-object v0, Lcom/netease/ntunisdk/FloatingButtonUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100()Lcom/netease/ntunisdk/FloatingButtonUtil$Callback;
    .locals 1

    .line 16
    sget-object v0, Lcom/netease/ntunisdk/FloatingButtonUtil;->sCallback:Lcom/netease/ntunisdk/FloatingButtonUtil$Callback;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 16
    sget v0, Lcom/netease/ntunisdk/FloatingButtonUtil;->REQ_CODE:I

    return v0
.end method

.method static canShowFloatBtn(Landroid/content/Context;)Z
    .locals 2

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static getStringId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "string"

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static hasFloatingPermission(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    .line 65
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x1000

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 66
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 67
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    const-string v4, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 68
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    invoke-static {}, Lcom/netease/ntunisdk/FloatingButtonUtil;->isOppoR9s()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return v0
.end method

.method private static isOppoR9s()Z
    .locals 2

    .line 60
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "r9s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "OPPO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static onActivityResult(I)V
    .locals 1

    .line 131
    sget v0, Lcom/netease/ntunisdk/FloatingButtonUtil;->REQ_CODE:I

    if-ne v0, p0, :cond_0

    sget-object p0, Lcom/netease/ntunisdk/FloatingButtonUtil;->sCallback:Lcom/netease/ntunisdk/FloatingButtonUtil$Callback;

    if-eqz p0, :cond_0

    .line 132
    invoke-interface {p0}, Lcom/netease/ntunisdk/FloatingButtonUtil$Callback;->done()V

    :cond_0
    return-void
.end method

.method static reqPermission(Landroid/app/Activity;Lcom/netease/ntunisdk/FloatingButtonUtil$Callback;)V
    .locals 2

    .line 97
    sput-object p1, Lcom/netease/ntunisdk/FloatingButtonUtil;->sCallback:Lcom/netease/ntunisdk/FloatingButtonUtil$Callback;

    .line 98
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "unishare_compat_float_message"

    .line 99
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/FloatingButtonUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/netease/ntunisdk/FloatingButtonUtil$3;

    invoke-direct {v0}, Lcom/netease/ntunisdk/FloatingButtonUtil$3;-><init>()V

    .line 100
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "unishare_compat_float_agree"

    .line 108
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/FloatingButtonUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/netease/ntunisdk/FloatingButtonUtil$2;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/FloatingButtonUtil$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "unishare_compat_float_reject"

    .line 117
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/FloatingButtonUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    new-instance v0, Lcom/netease/ntunisdk/FloatingButtonUtil$1;

    invoke-direct {v0}, Lcom/netease/ntunisdk/FloatingButtonUtil$1;-><init>()V

    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 126
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 127
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static shouldReqPermission(Landroid/content/Context;)Z
    .locals 2

    .line 84
    sget-object v0, Lcom/netease/ntunisdk/FloatingButtonUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "FloatingButtonUtil"

    .line 85
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/netease/ntunisdk/FloatingButtonUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 87
    :cond_0
    sget-object p0, Lcom/netease/ntunisdk/FloatingButtonUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "state"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method static startSingle(Landroid/content/Context;)V
    .locals 2

    .line 44
    invoke-static {p0}, Lcom/netease/ntunisdk/FloatingButtonUtil;->canShowFloatBtn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/netease/ntunisdk/FloatingButtonUtil;->sIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netease/ntunisdk/FloatingButtonService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v0, Lcom/netease/ntunisdk/FloatingButtonUtil;->sIntent:Landroid/content/Intent;

    .line 47
    sget-object v0, Lcom/netease/ntunisdk/FloatingButtonUtil;->sIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method static stop(Landroid/content/Context;)V
    .locals 1

    .line 53
    sget-object v0, Lcom/netease/ntunisdk/FloatingButtonUtil;->sIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    const/4 p0, 0x0

    .line 55
    sput-object p0, Lcom/netease/ntunisdk/FloatingButtonUtil;->sIntent:Landroid/content/Intent;

    :cond_0
    return-void
.end method
