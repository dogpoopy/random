.class public final Lcom/google/android/gms/internal/auth-api/zbba;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@20.2.0"


# static fields
.field public static final zba:Lcom/google/android/gms/common/Feature;

.field public static final zbb:Lcom/google/android/gms/common/Feature;

.field public static final zbc:Lcom/google/android/gms/common/Feature;

.field public static final zbd:Lcom/google/android/gms/common/Feature;

.field public static final zbe:Lcom/google/android/gms/common/Feature;

.field public static final zbf:Lcom/google/android/gms/common/Feature;

.field public static final zbg:Lcom/google/android/gms/common/Feature;

.field public static final zbh:Lcom/google/android/gms/common/Feature;

.field public static final zbi:[Lcom/google/android/gms/common/Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v1, "auth_api_credentials_begin_sign_in"

    const-wide/16 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/internal/auth-api/zbba;->zba:Lcom/google/android/gms/common/Feature;

    new-instance v1, Lcom/google/android/gms/common/Feature;

    const-string v4, "auth_api_credentials_sign_out"

    const-wide/16 v5, 0x2

    .line 2
    invoke-direct {v1, v4, v5, v6}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lcom/google/android/gms/internal/auth-api/zbba;->zbb:Lcom/google/android/gms/common/Feature;

    new-instance v4, Lcom/google/android/gms/common/Feature;

    const-string v5, "auth_api_credentials_authorize"

    const-wide/16 v6, 0x1

    .line 3
    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v4, Lcom/google/android/gms/internal/auth-api/zbba;->zbc:Lcom/google/android/gms/common/Feature;

    new-instance v5, Lcom/google/android/gms/common/Feature;

    const-string v8, "auth_api_credentials_revoke_access"

    .line 4
    invoke-direct {v5, v8, v6, v7}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v5, Lcom/google/android/gms/internal/auth-api/zbba;->zbd:Lcom/google/android/gms/common/Feature;

    new-instance v6, Lcom/google/android/gms/common/Feature;

    const-string v7, "auth_api_credentials_save_password"

    const-wide/16 v8, 0x4

    .line 5
    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v6, Lcom/google/android/gms/internal/auth-api/zbba;->zbe:Lcom/google/android/gms/common/Feature;

    new-instance v7, Lcom/google/android/gms/common/Feature;

    const-string v8, "auth_api_credentials_get_sign_in_intent"

    .line 6
    invoke-direct {v7, v8, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v7, Lcom/google/android/gms/internal/auth-api/zbba;->zbf:Lcom/google/android/gms/common/Feature;

    new-instance v2, Lcom/google/android/gms/common/Feature;

    const-string v3, "auth_api_credentials_save_account_linking_token"

    const-wide/16 v8, 0x3

    .line 7
    invoke-direct {v2, v3, v8, v9}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v2, Lcom/google/android/gms/internal/auth-api/zbba;->zbg:Lcom/google/android/gms/common/Feature;

    new-instance v3, Lcom/google/android/gms/common/Feature;

    const-string v10, "auth_api_credentials_get_phone_number_hint_intent"

    .line 8
    invoke-direct {v3, v10, v8, v9}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v3, Lcom/google/android/gms/internal/auth-api/zbba;->zbh:Lcom/google/android/gms/common/Feature;

    const/16 v8, 0x8

    new-array v8, v8, [Lcom/google/android/gms/common/Feature;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v0, 0x1

    aput-object v1, v8, v0

    const/4 v0, 0x2

    aput-object v4, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v6, v8, v0

    const/4 v0, 0x5

    aput-object v7, v8, v0

    const/4 v0, 0x6

    aput-object v2, v8, v0

    const/4 v0, 0x7

    aput-object v3, v8, v0

    sput-object v8, Lcom/google/android/gms/internal/auth-api/zbba;->zbi:[Lcom/google/android/gms/common/Feature;

    return-void
.end method
