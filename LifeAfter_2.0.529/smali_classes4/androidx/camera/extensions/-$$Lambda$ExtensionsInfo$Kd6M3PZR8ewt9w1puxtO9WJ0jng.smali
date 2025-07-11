.class public final synthetic Landroidx/camera/extensions/-$$Lambda$ExtensionsInfo$Kd6M3PZR8ewt9w1puxtO9WJ0jng;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/extensions/VendorExtenderFactory;


# static fields
.field public static final synthetic INSTANCE:Landroidx/camera/extensions/-$$Lambda$ExtensionsInfo$Kd6M3PZR8ewt9w1puxtO9WJ0jng;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/extensions/-$$Lambda$ExtensionsInfo$Kd6M3PZR8ewt9w1puxtO9WJ0jng;

    invoke-direct {v0}, Landroidx/camera/extensions/-$$Lambda$ExtensionsInfo$Kd6M3PZR8ewt9w1puxtO9WJ0jng;-><init>()V

    sput-object v0, Landroidx/camera/extensions/-$$Lambda$ExtensionsInfo$Kd6M3PZR8ewt9w1puxtO9WJ0jng;->INSTANCE:Landroidx/camera/extensions/-$$Lambda$ExtensionsInfo$Kd6M3PZR8ewt9w1puxtO9WJ0jng;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createVendorExtender(I)Landroidx/camera/extensions/internal/VendorExtender;
    .locals 0

    invoke-static {p1}, Landroidx/camera/extensions/ExtensionsInfo;->lambda$new$0(I)Landroidx/camera/extensions/internal/VendorExtender;

    move-result-object p1

    return-object p1
.end method
